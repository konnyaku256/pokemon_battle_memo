import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:pokemon_battle_memo/components/move_listtile.dart';
import 'package:pokemon_battle_memo/components/pokemon_listtile.dart';
import 'package:pokemon_battle_memo/graphql/read_pokemon.data.gql.dart';
import 'package:pokemon_battle_memo/library/battle_memo/pokemon.dart';
import 'package:pokemon_battle_memo/library/kana.dart';
import 'package:pokemon_battle_memo/library/l10n.dart';
import 'package:pokemon_battle_memo/library/pokemon_listtile_data.dart';
import 'package:pokemon_battle_memo/library/shared_preferences.dart';
import 'package:pokemon_battle_memo/library/translate.dart';
import 'package:pokemon_battle_memo/services/gql_operations.dart';

class PokemonCard extends HookWidget {
  final GlobalKey<PokemonListTileState> pokemonListTileKey;
  final int pokemonListIndex;
  const PokemonCard(
      {Key? key,
      required this.pokemonListTileKey,
      required this.pokemonListIndex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pokemonNameList = initNameList('pokemon.csv', 'ja');
    final typeNameList = initNameList('type.csv', 'ja');
    final abilityNameList = initNameList('ability.csv', 'ja');
    final itemNameList = initNameList('item.csv', 'ja');

    final pokemon = useState(Pokemon('', '', '', '', '', '', '', ''));

    void initAction() async {
      final pokemonJSON = await getTmpPokemonBattleMemoJSON(pokemonListIndex);
      if (pokemonJSON.isNotEmpty) {
        pokemon.value = Pokemon.fromJson(json.decode(pokemonJSON));
      }
    }

    useEffect(() {
      initAction();
      return null;
    }, const []);

    Future<void> setPokemonData(GReadPokemonData_pokemon? pokemonData) async {
      pokemon.value = Pokemon(
          pokemonData?.name ?? '',
          '',
          pokemonData?.abilities?.first.ability?.name ?? '',
          '',
          '',
          '',
          '',
          '');
      await setTmpPokemonBattleMemoJSON(
          pokemonListIndex, json.encode(pokemon.value.toJson()));

      // PokemonListTileのデータを更新
      final pokemonListTileData = PokemonListTileData(
          pokemonData?.sprites?.front_default ?? '',
          pokemonData?.name ?? '',
          types2String(pokemonData?.types),
          stats2String(pokemonData?.stats),
          pokemon.value.item);
      pokemonListTileKey.currentState?.updatePokemonData(pokemonListTileData);
    }

    Future<void> selectPokemon(String pokemonName) async {
      final res = await readPokemon(pokemonName);
      setPokemonData(res?.data?.pokemon);
    }

    Future<void> selectTerraceType(String terraceType) async {
      pokemon.value.terraceType = terraceType;
      await setTmpPokemonBattleMemoJSON(
          pokemonListIndex, json.encode(pokemon.value.toJson()));
    }

    Future<void> selectAbility(String ability) async {
      pokemon.value.ability = ability;
      await setTmpPokemonBattleMemoJSON(
          pokemonListIndex, json.encode(pokemon.value.toJson()));
    }

    Future<void> selectItem(String item) async {
      pokemon.value.item = item;
      await setTmpPokemonBattleMemoJSON(
          pokemonListIndex, json.encode(pokemon.value.toJson()));

      // PokemonListTileのデータを更新
      pokemonListTileKey.currentState?.updateItemName(item);
    }

    Future<void> setMove(int moveNumber, String move) async {
      switch (moveNumber) {
        case 1:
          pokemon.value.move1 = move;
          break;
        case 2:
          pokemon.value.move2 = move;
          break;
        case 3:
          pokemon.value.move3 = move;
          break;
        case 4:
          pokemon.value.move4 = move;
          break;
      }
      await setTmpPokemonBattleMemoJSON(
          pokemonListIndex, json.encode(pokemon.value.toJson()));
    }

    return Card(
        margin: const EdgeInsets.only(left: 8, right: 8, top: 16, bottom: 16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Container(
            margin:
                const EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
            width: double.infinity,
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisSize: MainAxisSize.values,
                children: <Widget>[
                  ListTile(
                    dense: true,
                    visualDensity: const VisualDensity(vertical: -4),
                    contentPadding:
                        const EdgeInsets.only(left: 0.0, right: 0.0),
                    title: SizedBox(
                        height: 20,
                        child: Autocomplete<String>(fieldViewBuilder: ((context,
                            textEditingController,
                            focusNode,
                            onFieldSubmitted) {
                          textEditingController.text = translate(
                              'pokemon.csv', 'en', pokemon.value.name, 'ja');
                          return TextField(
                            controller: textEditingController,
                            focusNode: focusNode,
                            style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                            decoration: const InputDecoration(
                              contentPadding:
                                  EdgeInsets.only(top: 10, bottom: 10),
                              border: UnderlineInputBorder(),
                              hintText: '？？？',
                            ),
                          );
                        }), optionsBuilder:
                            (TextEditingValue textEditingValue) {
                          if (textEditingValue.text == '') {
                            return const Iterable<String>.empty();
                          }
                          return pokemonNameList.where((String option) {
                            return option.contains(
                                hiraganaToKatakana(textEditingValue.text));
                          });
                        }, onSelected: (String value) async {
                          await selectPokemon(
                              translate('pokemon.csv', 'ja', value, 'en'));
                          // キーボードを閉じる
                          primaryFocus?.unfocus();
                        })),
                    trailing: Text('${pokemonListIndex + 1}体目',
                        style: const TextStyle(
                            fontSize: 12, fontWeight: FontWeight.normal)),
                  ),
                  const Padding(padding: EdgeInsets.only(bottom: 4)),
                  ListTile(
                      dense: true,
                      visualDensity: const VisualDensity(vertical: -4),
                      contentPadding:
                          const EdgeInsets.only(left: 0.0, right: 0.0),
                      title: Text(l10n(context).terrace_type,
                          style: const TextStyle(
                              fontSize: 14, fontWeight: FontWeight.normal)),
                      trailing: SizedBox(
                        height: 16,
                        width: 150,
                        child: Autocomplete<String>(fieldViewBuilder: ((context,
                            textEditingController,
                            focusNode,
                            onFieldSubmitted) {
                          textEditingController.text = translate('type.csv',
                              'en', pokemon.value.terraceType, 'ja');
                          return TextField(
                            controller: textEditingController,
                            focusNode: focusNode,
                            textAlign: TextAlign.right,
                            style: const TextStyle(
                                fontSize: 14, fontWeight: FontWeight.normal),
                            decoration: const InputDecoration(
                              contentPadding:
                                  EdgeInsets.only(top: 10, bottom: 10),
                              border: UnderlineInputBorder(),
                              hintText: '？？？',
                            ),
                          );
                        }), optionsBuilder:
                            (TextEditingValue textEditingValue) {
                          if (textEditingValue.text == '') {
                            return const Iterable<String>.empty();
                          }
                          return typeNameList.where((String option) {
                            return option.contains(textEditingValue.text) ||
                                option.contains(
                                    hiraganaToKatakana(textEditingValue.text));
                          });
                        }, onSelected: (String value) async {
                          await selectTerraceType(
                              translate('type.csv', 'ja', value, 'en'));
                          // キーボードを閉じる
                          primaryFocus?.unfocus();
                        }),
                      )),
                  ListTile(
                      dense: true,
                      visualDensity: const VisualDensity(vertical: -4),
                      contentPadding:
                          const EdgeInsets.only(left: 0.0, right: 0.0),
                      title: Text(l10n(context).ability,
                          style: const TextStyle(
                              fontSize: 14, fontWeight: FontWeight.normal)),
                      trailing: SizedBox(
                        height: 16,
                        width: 150,
                        child: Autocomplete<String>(fieldViewBuilder: ((context,
                            textEditingController,
                            focusNode,
                            onFieldSubmitted) {
                          textEditingController.text = translate(
                              'ability.csv', 'en', pokemon.value.ability, 'ja');
                          return TextField(
                            controller: textEditingController,
                            focusNode: focusNode,
                            textAlign: TextAlign.right,
                            style: const TextStyle(
                                fontSize: 14, fontWeight: FontWeight.normal),
                            decoration: const InputDecoration(
                              contentPadding:
                                  EdgeInsets.only(top: 10, bottom: 10),
                              border: UnderlineInputBorder(),
                              hintText: '？？？',
                            ),
                          );
                        }), optionsBuilder:
                            (TextEditingValue textEditingValue) {
                          if (textEditingValue.text == '') {
                            return const Iterable<String>.empty();
                          }
                          return abilityNameList.where((String option) {
                            return option.contains(textEditingValue.text) ||
                                option.contains(
                                    hiraganaToKatakana(textEditingValue.text));
                          });
                        }, onSelected: (String value) async {
                          await selectAbility(
                              translate('ability.csv', 'ja', value, 'en'));
                          // キーボードを閉じる
                          primaryFocus?.unfocus();
                        }),
                      )),
                  ListTile(
                      dense: true,
                      visualDensity: const VisualDensity(vertical: -4),
                      contentPadding:
                          const EdgeInsets.only(left: 0.0, right: 0.0),
                      title: Text(l10n(context).item,
                          style: const TextStyle(
                              fontSize: 14, fontWeight: FontWeight.normal)),
                      trailing: SizedBox(
                        height: 16,
                        width: 150,
                        child: Autocomplete<String>(fieldViewBuilder: ((context,
                            textEditingController,
                            focusNode,
                            onFieldSubmitted) {
                          textEditingController.text = translate(
                              'item.csv', 'en', pokemon.value.item, 'ja');
                          return TextField(
                            controller: textEditingController,
                            focusNode: focusNode,
                            textAlign: TextAlign.right,
                            style: const TextStyle(
                                fontSize: 14, fontWeight: FontWeight.normal),
                            decoration: const InputDecoration(
                              contentPadding:
                                  EdgeInsets.only(top: 10, bottom: 10),
                              border: UnderlineInputBorder(),
                              hintText: '？？？',
                            ),
                          );
                        }), optionsBuilder:
                            (TextEditingValue textEditingValue) {
                          if (textEditingValue.text == '') {
                            return const Iterable<String>.empty();
                          }
                          return itemNameList.where((String option) {
                            return option.contains(textEditingValue.text) ||
                                option.contains(
                                    hiraganaToKatakana(textEditingValue.text));
                          });
                        }, onSelected: (String value) async {
                          await selectItem(
                              translate('item.csv', 'ja', value, 'en'));
                          // キーボードを閉じる
                          primaryFocus?.unfocus();
                        }),
                      )),
                  const Padding(padding: EdgeInsets.only(bottom: 4)),
                  Text(l10n(context).moves,
                      style: const TextStyle(
                          fontSize: 14, fontWeight: FontWeight.normal)),
                  const Divider(color: Colors.black),
                  MoveListTile(
                    pokemonListIndex: pokemonListIndex,
                    moveNumber: 1,
                    setMove: setMove,
                  ),
                  MoveListTile(
                    pokemonListIndex: pokemonListIndex,
                    moveNumber: 2,
                    setMove: setMove,
                  ),
                  MoveListTile(
                    pokemonListIndex: pokemonListIndex,
                    moveNumber: 3,
                    setMove: setMove,
                  ),
                  MoveListTile(
                    pokemonListIndex: pokemonListIndex,
                    moveNumber: 4,
                    setMove: setMove,
                  ),
                ])));
  }
}
