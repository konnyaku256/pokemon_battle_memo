import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:pokemon_battle_memo/library/battle_memo/pokemon.dart';
import 'package:pokemon_battle_memo/library/kana.dart';
import 'package:pokemon_battle_memo/library/shared_preferences.dart';
import 'package:pokemon_battle_memo/library/translate.dart';

class MoveListTile extends HookWidget {
  final int pokemonListIndex;
  final int moveNumber;
  final Function setMove;
  const MoveListTile(
      {Key? key,
      required this.pokemonListIndex,
      required this.moveNumber,
      required this.setMove})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final moveNameList = initNameList('move.csv', 'ja');

    final moveName = useState('');

    Future<void> getMove(int moveNumber) async {
      final pokemonJSON = await getTmpPokemonBattleMemoJSON(pokemonListIndex);
      if (pokemonJSON.isNotEmpty) {
        final pokemon = Pokemon.fromJson(json.decode(pokemonJSON));
        switch (moveNumber) {
          case 1:
            moveName.value = pokemon.move1;
            break;
          case 2:
            moveName.value = pokemon.move2;
            break;
          case 3:
            moveName.value = pokemon.move3;
            break;
          case 4:
            moveName.value = pokemon.move4;
            break;
        }
      }
    }

    void initAction() async {
      await getMove(moveNumber);
    }

    useEffect(() {
      initAction();
      return null;
    }, const []);

    return Container(
        margin: const EdgeInsets.only(bottom: 3),
        child: ListTile(
            dense: true,
            visualDensity: const VisualDensity(vertical: -4),
            contentPadding: const EdgeInsets.only(left: 0.0, right: 0.0),
            title: SizedBox(
              height: 20,
              child: Autocomplete<String>(fieldViewBuilder: ((context,
                  textEditingController, focusNode, onFieldSubmitted) {
                textEditingController.text = moveName.value;
                return TextField(
                  controller: textEditingController,
                  focusNode: focusNode,
                  style: const TextStyle(
                      fontSize: 14, fontWeight: FontWeight.normal),
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.only(top: 10, bottom: 10),
                    border: UnderlineInputBorder(),
                    hintText: '？？？',
                  ),
                );
              }), optionsBuilder: (TextEditingValue textEditingValue) {
                if (textEditingValue.text == '') {
                  return const Iterable<String>.empty();
                }
                return moveNameList.where((String option) {
                  return option.contains(textEditingValue.text) ||
                      option
                          .contains(hiraganaToKatakana(textEditingValue.text));
                });
              }, onSelected: (String value) async {
                moveName.value = value;
                await setMove(moveNumber, value);
                // キーボードを閉じる
                primaryFocus?.unfocus();
              }),
            )));
  }
}
