// ignore: depend_on_referenced_packages
import 'package:built_collection/built_collection.dart';
import 'package:pokemon_battle_memo/graphql/read_pokemon.data.gql.dart';
import 'package:pokemon_battle_memo/library/translate.dart';

class PokemonListTileData {
  PokemonListTileData(
      this.sprite, this.name, this.type, this.stat, this.itemName);

  String sprite;
  String name;
  String type;
  String stat;
  String itemName;
}

PokemonListTileData newPokemonListTileData() {
  const defaultSprite =
      "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/132.png";
  const defaultName = '？？？';
  return PokemonListTileData(defaultSprite, defaultName, '', '', '');
}

List<PokemonListTileData> newPokemonListTileDataList() {
  const defaultSprite =
      "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/132.png";
  const defaultName = '？？？';
  return List<PokemonListTileData>.from([
    PokemonListTileData(defaultSprite, defaultName, '', '', ''),
    PokemonListTileData(defaultSprite, defaultName, '', '', ''),
    PokemonListTileData(defaultSprite, defaultName, '', '', ''),
    PokemonListTileData(defaultSprite, defaultName, '', '', ''),
    PokemonListTileData(defaultSprite, defaultName, '', '', ''),
    PokemonListTileData(defaultSprite, defaultName, '', '', '')
  ]);
}

String types2String(BuiltList<GReadPokemonData_pokemon_types>? types) {
  if (types?.length == 1) {
    return translate('type.csv', 'en', '${types?[0].type?.name}', 'ja');
  } else if (types?.length == 2) {
    return '${translate('type.csv', 'en', '${types?[0].type?.name}', 'ja')} / ${translate('type.csv', 'en', '${types?[1].type?.name}', 'ja')}';
  }
  return '';
}

String stats2String(BuiltList<GReadPokemonData_pokemon_stats>? stats) {
  if (stats?.length == 6) {
    return 'H${stats?[0].base_stat} A${stats?[1].base_stat} B${stats?[2].base_stat} C${stats?[3].base_stat} D${stats?[4].base_stat} S${stats?[5].base_stat} ';
  }
  return '';
}
