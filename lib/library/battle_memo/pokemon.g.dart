// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Pokemon _$PokemonFromJson(Map<String, dynamic> json) {
  return Pokemon(
    json['name'] as String,
    json['terrace_type'] as String,
    json['ability'] as String,
    json['item'] as String,
    json['move1'] as String,
    json['move2'] as String,
    json['move3'] as String,
    json['move4'] as String,
  );
}

Map<String, dynamic> _$PokemonToJson(Pokemon instance) => <String, dynamic>{
      'name': instance.name,
      'terrace_type': instance.terraceType,
      'ability': instance.ability,
      'item': instance.item,
      'move1': instance.move1,
      'move2': instance.move2,
      'move3': instance.move3,
      'move4': instance.move4,
    };
