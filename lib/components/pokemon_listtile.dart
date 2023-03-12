import 'dart:convert';

import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:pokemon_battle_memo/library/battle_memo/pokemon.dart';
import 'package:pokemon_battle_memo/library/pokemon_listtile_data.dart';
import 'package:pokemon_battle_memo/library/shared_preferences.dart';
import 'package:pokemon_battle_memo/library/translate.dart';
import 'package:pokemon_battle_memo/services/gql_operations.dart';

class PokemonListTile extends StatefulWidget {
  final int listTileIndex;
  final CarouselController carouselController;
  const PokemonListTile(
      {Key? key, required this.listTileIndex, required this.carouselController})
      : super(key: key);
  @override
  PokemonListTileState createState() => PokemonListTileState();
}

class PokemonListTileState extends State<PokemonListTile> {
  PokemonListTileData pokemonData = newPokemonListTileData();

  void updatePokemonData(PokemonListTileData pokemonListTileData) {
    setState(() {
      pokemonData = pokemonListTileData;
    });
  }

  void updateItemName(String itemName) {
    setState(() {
      pokemonData.itemName = itemName;
    });
  }

  @override
  void initState() {
    super.initState();

    Future(() async {
      final pokemonJSON =
          await getTmpPokemonBattleMemoJSON(widget.listTileIndex);
      if (pokemonJSON.isNotEmpty) {
        final pokemon = Pokemon.fromJson(json.decode(pokemonJSON));
        final res = await readPokemon(pokemon.name);
        final pokemonData = res?.data?.pokemon;
        final pokemonListTileData = PokemonListTileData(
            pokemonData?.sprites?.front_default ?? '',
            pokemonData?.name ?? '',
            types2String(pokemonData?.types),
            stats2String(pokemonData?.stats),
            pokemon.item);
        updatePokemonData(pokemonListTileData);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(bottom: 3),
        child: InkWell(
            onTap: () {
              widget.carouselController.animateToPage(widget.listTileIndex);
            },
            child: (ListTile(
              dense: true,
              visualDensity: const VisualDensity(vertical: -4),
              contentPadding: const EdgeInsets.only(left: 0.0, right: 0.0),
              leading: CircleAvatar(
                  radius: 16,
                  backgroundColor: Colors.white,
                  backgroundImage: NetworkImage(pokemonData.sprite)),
              title: Row(
                children: <Widget>[
                  Text(translate('pokemon.csv', 'en', pokemonData.name, 'ja'),
                      style: const TextStyle(
                          fontSize: 14, fontWeight: FontWeight.bold)),
                  const Padding(padding: EdgeInsets.only(right: 10)),
                  Text(pokemonData.type,
                      style: const TextStyle(
                          fontSize: 8, fontWeight: FontWeight.normal))
                ],
              ),
              subtitle: Text(pokemonData.stat,
                  style: const TextStyle(
                      fontSize: 14, fontWeight: FontWeight.normal)),
              trailing: CircleAvatar(
                  radius: 14,
                  backgroundColor: Colors.white,
                  backgroundImage: NetworkImage(
                      'https://www.serebii.net/itemdex/sprites/sv/${pokemonData.itemName}.png')),
              // backgroundImage: NetworkImage(
              //     'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/items/oran-berry.png')),
            ))));
  }
}
