// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:pokemon_battle_memo/serializers.gql.dart' as _i1;

part 'read_pokemon.data.gql.g.dart';

abstract class GReadPokemonData
    implements Built<GReadPokemonData, GReadPokemonDataBuilder> {
  GReadPokemonData._();

  factory GReadPokemonData([Function(GReadPokemonDataBuilder b) updates]) =
      _$GReadPokemonData;

  static void _initializeBuilder(GReadPokemonDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GReadPokemonData_pokemon? get pokemon;
  static Serializer<GReadPokemonData> get serializer =>
      _$gReadPokemonDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GReadPokemonData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GReadPokemonData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GReadPokemonData.serializer,
        json,
      );
}

abstract class GReadPokemonData_pokemon
    implements
        Built<GReadPokemonData_pokemon, GReadPokemonData_pokemonBuilder> {
  GReadPokemonData_pokemon._();

  factory GReadPokemonData_pokemon(
          [Function(GReadPokemonData_pokemonBuilder b) updates]) =
      _$GReadPokemonData_pokemon;

  static void _initializeBuilder(GReadPokemonData_pokemonBuilder b) =>
      b..G__typename = 'Pokemon';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get name;
  GReadPokemonData_pokemon_sprites? get sprites;
  BuiltList<GReadPokemonData_pokemon_abilities>? get abilities;
  BuiltList<GReadPokemonData_pokemon_types>? get types;
  BuiltList<GReadPokemonData_pokemon_stats>? get stats;
  BuiltList<GReadPokemonData_pokemon_moves>? get moves;
  static Serializer<GReadPokemonData_pokemon> get serializer =>
      _$gReadPokemonDataPokemonSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GReadPokemonData_pokemon.serializer,
        this,
      ) as Map<String, dynamic>);
  static GReadPokemonData_pokemon? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GReadPokemonData_pokemon.serializer,
        json,
      );
}

abstract class GReadPokemonData_pokemon_sprites
    implements
        Built<GReadPokemonData_pokemon_sprites,
            GReadPokemonData_pokemon_spritesBuilder> {
  GReadPokemonData_pokemon_sprites._();

  factory GReadPokemonData_pokemon_sprites(
          [Function(GReadPokemonData_pokemon_spritesBuilder b) updates]) =
      _$GReadPokemonData_pokemon_sprites;

  static void _initializeBuilder(GReadPokemonData_pokemon_spritesBuilder b) =>
      b..G__typename = 'Sprite';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get front_default;
  static Serializer<GReadPokemonData_pokemon_sprites> get serializer =>
      _$gReadPokemonDataPokemonSpritesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GReadPokemonData_pokemon_sprites.serializer,
        this,
      ) as Map<String, dynamic>);
  static GReadPokemonData_pokemon_sprites? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GReadPokemonData_pokemon_sprites.serializer,
        json,
      );
}

abstract class GReadPokemonData_pokemon_abilities
    implements
        Built<GReadPokemonData_pokemon_abilities,
            GReadPokemonData_pokemon_abilitiesBuilder> {
  GReadPokemonData_pokemon_abilities._();

  factory GReadPokemonData_pokemon_abilities(
          [Function(GReadPokemonData_pokemon_abilitiesBuilder b) updates]) =
      _$GReadPokemonData_pokemon_abilities;

  static void _initializeBuilder(GReadPokemonData_pokemon_abilitiesBuilder b) =>
      b..G__typename = 'Ability';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GReadPokemonData_pokemon_abilities_ability? get ability;
  static Serializer<GReadPokemonData_pokemon_abilities> get serializer =>
      _$gReadPokemonDataPokemonAbilitiesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GReadPokemonData_pokemon_abilities.serializer,
        this,
      ) as Map<String, dynamic>);
  static GReadPokemonData_pokemon_abilities? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GReadPokemonData_pokemon_abilities.serializer,
        json,
      );
}

abstract class GReadPokemonData_pokemon_abilities_ability
    implements
        Built<GReadPokemonData_pokemon_abilities_ability,
            GReadPokemonData_pokemon_abilities_abilityBuilder> {
  GReadPokemonData_pokemon_abilities_ability._();

  factory GReadPokemonData_pokemon_abilities_ability(
      [Function(GReadPokemonData_pokemon_abilities_abilityBuilder b)
          updates]) = _$GReadPokemonData_pokemon_abilities_ability;

  static void _initializeBuilder(
          GReadPokemonData_pokemon_abilities_abilityBuilder b) =>
      b..G__typename = 'BaseName';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get name;
  static Serializer<GReadPokemonData_pokemon_abilities_ability>
      get serializer => _$gReadPokemonDataPokemonAbilitiesAbilitySerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GReadPokemonData_pokemon_abilities_ability.serializer,
        this,
      ) as Map<String, dynamic>);
  static GReadPokemonData_pokemon_abilities_ability? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GReadPokemonData_pokemon_abilities_ability.serializer,
        json,
      );
}

abstract class GReadPokemonData_pokemon_types
    implements
        Built<GReadPokemonData_pokemon_types,
            GReadPokemonData_pokemon_typesBuilder> {
  GReadPokemonData_pokemon_types._();

  factory GReadPokemonData_pokemon_types(
          [Function(GReadPokemonData_pokemon_typesBuilder b) updates]) =
      _$GReadPokemonData_pokemon_types;

  static void _initializeBuilder(GReadPokemonData_pokemon_typesBuilder b) =>
      b..G__typename = 'Type';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GReadPokemonData_pokemon_types_type? get type;
  static Serializer<GReadPokemonData_pokemon_types> get serializer =>
      _$gReadPokemonDataPokemonTypesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GReadPokemonData_pokemon_types.serializer,
        this,
      ) as Map<String, dynamic>);
  static GReadPokemonData_pokemon_types? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GReadPokemonData_pokemon_types.serializer,
        json,
      );
}

abstract class GReadPokemonData_pokemon_types_type
    implements
        Built<GReadPokemonData_pokemon_types_type,
            GReadPokemonData_pokemon_types_typeBuilder> {
  GReadPokemonData_pokemon_types_type._();

  factory GReadPokemonData_pokemon_types_type(
          [Function(GReadPokemonData_pokemon_types_typeBuilder b) updates]) =
      _$GReadPokemonData_pokemon_types_type;

  static void _initializeBuilder(
          GReadPokemonData_pokemon_types_typeBuilder b) =>
      b..G__typename = 'BaseName';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get name;
  static Serializer<GReadPokemonData_pokemon_types_type> get serializer =>
      _$gReadPokemonDataPokemonTypesTypeSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GReadPokemonData_pokemon_types_type.serializer,
        this,
      ) as Map<String, dynamic>);
  static GReadPokemonData_pokemon_types_type? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GReadPokemonData_pokemon_types_type.serializer,
        json,
      );
}

abstract class GReadPokemonData_pokemon_stats
    implements
        Built<GReadPokemonData_pokemon_stats,
            GReadPokemonData_pokemon_statsBuilder> {
  GReadPokemonData_pokemon_stats._();

  factory GReadPokemonData_pokemon_stats(
          [Function(GReadPokemonData_pokemon_statsBuilder b) updates]) =
      _$GReadPokemonData_pokemon_stats;

  static void _initializeBuilder(GReadPokemonData_pokemon_statsBuilder b) =>
      b..G__typename = 'Stat';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get base_stat;
  static Serializer<GReadPokemonData_pokemon_stats> get serializer =>
      _$gReadPokemonDataPokemonStatsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GReadPokemonData_pokemon_stats.serializer,
        this,
      ) as Map<String, dynamic>);
  static GReadPokemonData_pokemon_stats? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GReadPokemonData_pokemon_stats.serializer,
        json,
      );
}

abstract class GReadPokemonData_pokemon_moves
    implements
        Built<GReadPokemonData_pokemon_moves,
            GReadPokemonData_pokemon_movesBuilder> {
  GReadPokemonData_pokemon_moves._();

  factory GReadPokemonData_pokemon_moves(
          [Function(GReadPokemonData_pokemon_movesBuilder b) updates]) =
      _$GReadPokemonData_pokemon_moves;

  static void _initializeBuilder(GReadPokemonData_pokemon_movesBuilder b) =>
      b..G__typename = 'Move';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GReadPokemonData_pokemon_moves_move? get move;
  BuiltList<GReadPokemonData_pokemon_moves_version_group_details>?
      get version_group_details;
  static Serializer<GReadPokemonData_pokemon_moves> get serializer =>
      _$gReadPokemonDataPokemonMovesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GReadPokemonData_pokemon_moves.serializer,
        this,
      ) as Map<String, dynamic>);
  static GReadPokemonData_pokemon_moves? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GReadPokemonData_pokemon_moves.serializer,
        json,
      );
}

abstract class GReadPokemonData_pokemon_moves_move
    implements
        Built<GReadPokemonData_pokemon_moves_move,
            GReadPokemonData_pokemon_moves_moveBuilder> {
  GReadPokemonData_pokemon_moves_move._();

  factory GReadPokemonData_pokemon_moves_move(
          [Function(GReadPokemonData_pokemon_moves_moveBuilder b) updates]) =
      _$GReadPokemonData_pokemon_moves_move;

  static void _initializeBuilder(
          GReadPokemonData_pokemon_moves_moveBuilder b) =>
      b..G__typename = 'BaseName';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get name;
  static Serializer<GReadPokemonData_pokemon_moves_move> get serializer =>
      _$gReadPokemonDataPokemonMovesMoveSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GReadPokemonData_pokemon_moves_move.serializer,
        this,
      ) as Map<String, dynamic>);
  static GReadPokemonData_pokemon_moves_move? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GReadPokemonData_pokemon_moves_move.serializer,
        json,
      );
}

abstract class GReadPokemonData_pokemon_moves_version_group_details
    implements
        Built<GReadPokemonData_pokemon_moves_version_group_details,
            GReadPokemonData_pokemon_moves_version_group_detailsBuilder> {
  GReadPokemonData_pokemon_moves_version_group_details._();

  factory GReadPokemonData_pokemon_moves_version_group_details(
      [Function(GReadPokemonData_pokemon_moves_version_group_detailsBuilder b)
          updates]) = _$GReadPokemonData_pokemon_moves_version_group_details;

  static void _initializeBuilder(
          GReadPokemonData_pokemon_moves_version_group_detailsBuilder b) =>
      b..G__typename = 'VersionGroupDetail';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GReadPokemonData_pokemon_moves_version_group_details_version_group?
      get version_group;
  static Serializer<GReadPokemonData_pokemon_moves_version_group_details>
      get serializer =>
          _$gReadPokemonDataPokemonMovesVersionGroupDetailsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GReadPokemonData_pokemon_moves_version_group_details.serializer,
        this,
      ) as Map<String, dynamic>);
  static GReadPokemonData_pokemon_moves_version_group_details? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GReadPokemonData_pokemon_moves_version_group_details.serializer,
        json,
      );
}

abstract class GReadPokemonData_pokemon_moves_version_group_details_version_group
    implements
        Built<
            GReadPokemonData_pokemon_moves_version_group_details_version_group,
            GReadPokemonData_pokemon_moves_version_group_details_version_groupBuilder> {
  GReadPokemonData_pokemon_moves_version_group_details_version_group._();

  factory GReadPokemonData_pokemon_moves_version_group_details_version_group(
          [Function(
                  GReadPokemonData_pokemon_moves_version_group_details_version_groupBuilder
                      b)
              updates]) =
      _$GReadPokemonData_pokemon_moves_version_group_details_version_group;

  static void _initializeBuilder(
          GReadPokemonData_pokemon_moves_version_group_details_version_groupBuilder
              b) =>
      b..G__typename = 'BaseName';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get name;
  static Serializer<
          GReadPokemonData_pokemon_moves_version_group_details_version_group>
      get serializer =>
          _$gReadPokemonDataPokemonMovesVersionGroupDetailsVersionGroupSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GReadPokemonData_pokemon_moves_version_group_details_version_group
            .serializer,
        this,
      ) as Map<String, dynamic>);
  static GReadPokemonData_pokemon_moves_version_group_details_version_group?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GReadPokemonData_pokemon_moves_version_group_details_version_group
                .serializer,
            json,
          );
}
