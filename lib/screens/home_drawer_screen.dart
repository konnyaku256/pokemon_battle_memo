import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:pokemon_battle_memo/library/l10n.dart';
import 'package:pokemon_battle_memo/screens/settings_screen.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeDrawerScreen extends HookWidget {
  const HomeDrawerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    useEffect(() {
      // initAction();
      return null;
    }, const []);

    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            child: Text(l10n(context).app_name),
          ),
          ListTile(
            leading: const Icon(Icons.help),
            title: Text(l10n(context).how_to_use),
            // subtitle: DescriptionText(l10n(context).diary_list_description),
          ),
          ListTile(
            leading: const Icon(Icons.settings_rounded),
            title: Text(l10n(context).settings),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => SettingsScreen(),
              ));
            },
          ),
          ListTile(
            leading: const Icon(Icons.code),
            title: Text(l10n(context).github),
            onTap: () async {
              await launchUrl(
                  Uri.parse(
                      'https://github.com/konnyaku256/pokemon_battle_memo'),
                  mode: LaunchMode.externalApplication);
            },
          ),
          ListTile(
            leading: const Icon(Icons.mail),
            title: Text(l10n(context).contact),
          ),
          ListTile(
            leading: const Icon(Icons.privacy_tip),
            title: Text(l10n(context).privacy_policy),
            // onTap: () {
            //   Navigator.of(context).push(MaterialPageRoute(
            //     builder: (context) => const PrivacyPolicyScreen(),
            //   ));
            // },
          ),
          ListTile(
            leading: const Icon(Icons.article_rounded),
            title: Text(l10n(context).terms_of_service),
            // onTap: () {
            //   Navigator.of(context).push(MaterialPageRoute(
            //     builder: (context) => const TermsAndConditionsScreen(),
            //   ));
            // },
          ),
        ],
      ),
    );
  }
}
