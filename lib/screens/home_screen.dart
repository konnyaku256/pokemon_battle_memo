// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:pokemon_battle_memo/components/pokemon_card_carousel_slider.dart';
import 'package:pokemon_battle_memo/components/pokemon_list.dart';
import 'package:pokemon_battle_memo/components/pokemon_listtile.dart';
import 'package:pokemon_battle_memo/library/l10n.dart';
import 'package:pokemon_battle_memo/screens/home_drawer_screen.dart';

class HomeScreen extends HookWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pokemonListTileKeys = [
      GlobalKey<PokemonListTileState>(),
      GlobalKey<PokemonListTileState>(),
      GlobalKey<PokemonListTileState>(),
      GlobalKey<PokemonListTileState>(),
      GlobalKey<PokemonListTileState>(),
      GlobalKey<PokemonListTileState>()
    ];

    void initAction() async {}

    useEffect(() {
      initAction();
      return null;
    }, const []);

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n(context).app_name_short),
      ),
      body: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
            SizedBox(
                height: 365,
                child: PokemonCardCarouselSlider(
                    pokemonListTileKeys: pokemonListTileKeys)),
            PokemonList(pokemonListTileKeys: pokemonListTileKeys)
          ])),
      drawer: const HomeDrawerScreen(),
    );
  }
}
