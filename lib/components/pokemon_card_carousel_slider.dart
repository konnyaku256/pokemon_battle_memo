import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get_it/get_it.dart';
import 'package:pokemon_battle_memo/components/pokemon_card.dart';
import 'package:pokemon_battle_memo/components/pokemon_listtile.dart';

class PokemonCardCarouselSlider extends HookWidget {
  final List<GlobalKey<PokemonListTileState>> pokemonListTileKeys;
  const PokemonCardCarouselSlider({Key? key, required this.pokemonListTileKeys})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final carouselController = GetIt.I<CarouselController>();

    return CarouselSlider(
      options: CarouselOptions(height: 500.0),
      carouselController: carouselController,
      items: [0, 1, 2, 3, 4, 5].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return PokemonCard(
                pokemonListTileKey: pokemonListTileKeys[i],
                pokemonListIndex: i);
          },
        );
      }).toList(),
    );
  }
}
