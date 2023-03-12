import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get_it/get_it.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:pokemon_battle_memo/config/theme.dart';
import 'package:pokemon_battle_memo/library/l10n.dart';
import 'package:provider/provider.dart';

class HowToUseScreen extends HookWidget {
  HowToUseScreen({Key? key}) : super(key: key);

  final packageInfo = GetIt.I<PackageInfo>();

  @override
  Widget build(BuildContext context) {
    final isDarkMode = useState(false);

    void initAction() async {
      isDarkMode.value =
          await Provider.of<MyBrightnessNotifier>(context, listen: false)
              .getIsDarkMode();
    }

    useEffect(() {
      initAction();
      return null;
    }, const []);

    return Scaffold(
        appBar: AppBar(
          title: Text(l10n(context).how_to_use),
        ),
        body: Container(
            margin: const EdgeInsets.all(20),
            child: SingleChildScrollView(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('【相手パーティ】',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                Image.asset("assets/howtouse/enemy_list.png", width: 300),
                const Text(
                    '「相手パーティ」のセクションでは対戦相手が使用している6対のポケモンを一覧で確認できます。\n各ポケモンをタップして表示される、後述の「ポケモンのカード」にポケモンの名前や持ち物を入力することで、ポケモンのアイコン、名前、タイプ、種族値、持ち物を表示できます。',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.normal)),
                const Divider(color: Colors.black),
                const Padding(padding: EdgeInsets.only(bottom: 10)),
                const Text('【各ポケモンのカード】',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                Image.asset("assets/howtouse/pokemon_card.png", width: 300),
                const Text(
                    '「各ポケモンのカード」のセクションでは対戦相手が使用している各ポケモンの詳細をメモできます。\nカード左上のフォームからポケモンの名前を入力することで、前述の「相手パーティ」の一覧にポケモンを追加できます。\nまた、そのポケモンのテラスタイプ、特性、持ち物、技構成を順次メモできます。\n※現在、メモの保存機能はありません。対戦毎に上書きする必要があります。',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.normal)),
              ],
            ))));
  }
}
