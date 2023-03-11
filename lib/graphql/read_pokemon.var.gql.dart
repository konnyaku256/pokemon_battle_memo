// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:pokemon_battle_memo/serializers.gql.dart' as _i1;

part 'read_pokemon.var.gql.g.dart';

abstract class GReadPokemonVars
    implements Built<GReadPokemonVars, GReadPokemonVarsBuilder> {
  GReadPokemonVars._();

  factory GReadPokemonVars([Function(GReadPokemonVarsBuilder b) updates]) =
      _$GReadPokemonVars;

  String get name;
  static Serializer<GReadPokemonVars> get serializer =>
      _$gReadPokemonVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GReadPokemonVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GReadPokemonVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GReadPokemonVars.serializer,
        json,
      );
}
