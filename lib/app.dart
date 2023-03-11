import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/text_localizations.dart';
import 'package:pokemon_battle_memo/screens/home_screen.dart';
import 'package:provider/provider.dart';
import 'package:pokemon_battle_memo/config/theme.dart';

class PokemonBattleMemo extends HookWidget {
  const PokemonBattleMemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => MyBrightnessNotifier(),
      child: Consumer<MyBrightnessNotifier>(builder: (context, brightness, _) {
        return MaterialApp(
            localizationsDelegates: const [
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: const [
              Locale('ja', ''), // 日本語
              // const Locale('en', ''), // 英語
            ],
            theme: ThemeData(
              brightness: brightness.currentBrightness,
              primarySwatch: myMaterialColorTheme,
            ),
            title: 'バトメモ',
            home: const HomeScreen());
      }),
    );
  }
}
