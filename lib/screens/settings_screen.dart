import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get_it/get_it.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:pokemon_battle_memo/config/theme.dart';
import 'package:pokemon_battle_memo/library/l10n.dart';
import 'package:provider/provider.dart';

class SettingsScreen extends HookWidget {
  SettingsScreen({Key? key}) : super(key: key);

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
          title: Text(l10n(context).settings),
        ),
        body: Container(
            margin: const EdgeInsets.all(20),
            child: Column(
              children: [
                ListTile(
                  leading: const Icon(Icons.translate),
                  title: Text(l10n(context).language),
                  subtitle: Text(l10n(context).language_description,
                      style: const TextStyle(
                          fontSize: 14, fontWeight: FontWeight.normal)),
                ),
                SwitchListTile(
                  activeColor: const Color(myPrimaryColorValue),
                  title: Text(l10n(context).dark_mode),
                  value: isDarkMode.value,
                  onChanged: (bool value) {
                    Provider.of<MyBrightnessNotifier>(context, listen: false)
                        .toggleBrightness();
                    isDarkMode.value = value;
                  },
                  secondary: const Icon(Icons.lightbulb),
                ),
                AboutListTile(
                  icon: const Icon(Icons.info),
                  applicationName: packageInfo.appName,
                  applicationVersion: packageInfo.version,
                  applicationIcon: Image.asset("assets/icon.png", width: 50),
                  applicationLegalese: "\u00A9 2023 konnyaku256",
                ),
              ],
            )));
  }
}
