import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:pokemon_battle_memo/library/translate.dart';

class MoveListTile extends HookWidget {
  final String moveName;
  const MoveListTile({Key? key, required this.moveName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(bottom: 3),
        child: ListTile(
            dense: true,
            visualDensity: const VisualDensity(vertical: -4),
            contentPadding: const EdgeInsets.only(left: 0.0, right: 0.0),
            title: SizedBox(
                height: 20,
                child: TextField(
                  controller: TextEditingController(
                      text: translate('item.csv', 'en', moveName, 'ja')),
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
                ))));
  }
}
