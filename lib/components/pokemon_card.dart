import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:pokemon_battle_memo/components/move_listtile.dart';
import 'package:pokemon_battle_memo/components/pokemon_listtile.dart';
import 'package:pokemon_battle_memo/graphql/read_pokemon.data.gql.dart';
import 'package:pokemon_battle_memo/library/battle_memo/pokemon.dart';
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
          pokemonData?.moves?.elementAt(0).move?.name ?? '',
          pokemonData?.moves?.elementAt(1).move?.name ?? '',
          pokemonData?.moves?.elementAt(2).move?.name ?? '',
          pokemonData?.moves?.elementAt(3).move?.name ?? '');
      await setTmpPokemonBattleMemoJSON(
          pokemonListIndex, json.encode(pokemon.value.toJson()));

      // PokemonListTileのデータを更新
      final pokemonListTileData = PokemonListTileData(
          pokemonData?.sprites?.front_default ?? '',
          pokemonData?.name ?? '',
          types2String(pokemonData?.types),
          stats2String(pokemonData?.stats));
      pokemonListTileKey.currentState?.updatePokemonData(pokemonListTileData);
    }

    Future<void> selectPokemon(String pokemonName) async {
      final res = await readPokemon(pokemonName);
      setPokemonData(res?.data?.pokemon);
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
                        child: TextField(
                          controller: TextEditingController(
                              text: translate('pokemon.csv', 'en',
                                  pokemon.value.name, 'ja')),
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                          decoration: const InputDecoration(
                            contentPadding: EdgeInsets.all(0),
                            border: OutlineInputBorder(),
                            hintText: '？？？',
                          ),
                          onSubmitted: (value) async {
                            await selectPokemon(
                                translate('pokemon.csv', 'ja', value, 'en'));
                          },
                        )),
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
                        width: 100,
                        child: TextField(
                          controller: TextEditingController(
                              text: translate('type.csv', 'en',
                                  pokemon.value.terraceType, 'ja')),
                          style: const TextStyle(
                              fontSize: 14, fontWeight: FontWeight.normal),
                          decoration: const InputDecoration(
                            contentPadding: EdgeInsets.all(0),
                            border: OutlineInputBorder(),
                            hintText: '？？？',
                          ),
                          onSubmitted: (value) async {
                            // TODO
                          },
                        )),
                  ),
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
                        width: 100,
                        child: TextField(
                          controller: TextEditingController(
                              text: translate('ability.csv', 'en',
                                  pokemon.value.ability, 'ja')),
                          style: const TextStyle(
                              fontSize: 14, fontWeight: FontWeight.normal),
                          decoration: const InputDecoration(
                            contentPadding: EdgeInsets.all(0),
                            border: OutlineInputBorder(),
                            hintText: '？？？',
                          ),
                          onSubmitted: (value) async {
                            // TODO
                          },
                        )),
                  ),
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
                        width: 100,
                        child: TextField(
                          controller: TextEditingController(
                              text: translate(
                                  'item.csv', 'en', pokemon.value.item, 'ja')),
                          style: const TextStyle(
                              fontSize: 14, fontWeight: FontWeight.normal),
                          decoration: const InputDecoration(
                            contentPadding: EdgeInsets.all(0),
                            border: OutlineInputBorder(),
                            hintText: '？？？',
                          ),
                          onSubmitted: (value) async {
                            // TODO
                          },
                        )),
                  ),
                  const Padding(padding: EdgeInsets.only(bottom: 4)),
                  Text(l10n(context).moves,
                      style: const TextStyle(
                          fontSize: 14, fontWeight: FontWeight.normal)),
                  const Divider(color: Colors.black),
                  MoveListTile(
                      moveName: translate(
                          'move.csv', 'en', pokemon.value.move1, 'ja')),
                  MoveListTile(
                      moveName: translate(
                          'move.csv', 'en', pokemon.value.move2, 'ja')),
                  MoveListTile(
                      moveName: translate(
                          'move.csv', 'en', pokemon.value.move3, 'ja')),
                  MoveListTile(
                      moveName: translate(
                          'move.csv', 'en', pokemon.value.move4, 'ja')),
                ])));
  }
}
