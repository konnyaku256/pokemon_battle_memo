import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get_it/get_it.dart';
import 'package:pokemon_battle_memo/components/pokemon_listtile.dart';
import 'package:pokemon_battle_memo/library/l10n.dart';

class PokemonList extends HookWidget {
  final List<GlobalKey<PokemonListTileState>> pokemonListTileKeys;
  const PokemonList({Key? key, required this.pokemonListTileKeys})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final carouselController = GetIt.I<CarouselController>();

    return Container(
        margin: const EdgeInsets.all(16.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(l10n(context).enemy_party),
              const Divider(color: Colors.black),
              for (var i in [0, 1, 2, 3, 4, 5])
                PokemonListTile(
                    key: pokemonListTileKeys[i],
                    listTileIndex: i,
                    carouselController: carouselController)
            ]));
  }
}
