// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'read_pokemon.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GReadPokemonData> _$gReadPokemonDataSerializer =
    new _$GReadPokemonDataSerializer();
Serializer<GReadPokemonData_pokemon> _$gReadPokemonDataPokemonSerializer =
    new _$GReadPokemonData_pokemonSerializer();
Serializer<GReadPokemonData_pokemon_sprites>
    _$gReadPokemonDataPokemonSpritesSerializer =
    new _$GReadPokemonData_pokemon_spritesSerializer();
Serializer<GReadPokemonData_pokemon_abilities>
    _$gReadPokemonDataPokemonAbilitiesSerializer =
    new _$GReadPokemonData_pokemon_abilitiesSerializer();
Serializer<GReadPokemonData_pokemon_abilities_ability>
    _$gReadPokemonDataPokemonAbilitiesAbilitySerializer =
    new _$GReadPokemonData_pokemon_abilities_abilitySerializer();
Serializer<GReadPokemonData_pokemon_types>
    _$gReadPokemonDataPokemonTypesSerializer =
    new _$GReadPokemonData_pokemon_typesSerializer();
Serializer<GReadPokemonData_pokemon_types_type>
    _$gReadPokemonDataPokemonTypesTypeSerializer =
    new _$GReadPokemonData_pokemon_types_typeSerializer();
Serializer<GReadPokemonData_pokemon_stats>
    _$gReadPokemonDataPokemonStatsSerializer =
    new _$GReadPokemonData_pokemon_statsSerializer();
Serializer<GReadPokemonData_pokemon_moves>
    _$gReadPokemonDataPokemonMovesSerializer =
    new _$GReadPokemonData_pokemon_movesSerializer();
Serializer<GReadPokemonData_pokemon_moves_move>
    _$gReadPokemonDataPokemonMovesMoveSerializer =
    new _$GReadPokemonData_pokemon_moves_moveSerializer();
Serializer<GReadPokemonData_pokemon_moves_version_group_details>
    _$gReadPokemonDataPokemonMovesVersionGroupDetailsSerializer =
    new _$GReadPokemonData_pokemon_moves_version_group_detailsSerializer();
Serializer<GReadPokemonData_pokemon_moves_version_group_details_version_group>
    _$gReadPokemonDataPokemonMovesVersionGroupDetailsVersionGroupSerializer =
    new _$GReadPokemonData_pokemon_moves_version_group_details_version_groupSerializer();

class _$GReadPokemonDataSerializer
    implements StructuredSerializer<GReadPokemonData> {
  @override
  final Iterable<Type> types = const [GReadPokemonData, _$GReadPokemonData];
  @override
  final String wireName = 'GReadPokemonData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GReadPokemonData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.pokemon;
    if (value != null) {
      result
        ..add('pokemon')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GReadPokemonData_pokemon)));
    }
    return result;
  }

  @override
  GReadPokemonData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GReadPokemonDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'pokemon':
          result.pokemon.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GReadPokemonData_pokemon))!
              as GReadPokemonData_pokemon);
          break;
      }
    }

    return result.build();
  }
}

class _$GReadPokemonData_pokemonSerializer
    implements StructuredSerializer<GReadPokemonData_pokemon> {
  @override
  final Iterable<Type> types = const [
    GReadPokemonData_pokemon,
    _$GReadPokemonData_pokemon
  ];
  @override
  final String wireName = 'GReadPokemonData_pokemon';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GReadPokemonData_pokemon object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.sprites;
    if (value != null) {
      result
        ..add('sprites')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GReadPokemonData_pokemon_sprites)));
    }
    value = object.abilities;
    if (value != null) {
      result
        ..add('abilities')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList,
                const [const FullType(GReadPokemonData_pokemon_abilities)])));
    }
    value = object.types;
    if (value != null) {
      result
        ..add('types')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList,
                const [const FullType(GReadPokemonData_pokemon_types)])));
    }
    value = object.stats;
    if (value != null) {
      result
        ..add('stats')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList,
                const [const FullType(GReadPokemonData_pokemon_stats)])));
    }
    value = object.moves;
    if (value != null) {
      result
        ..add('moves')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList,
                const [const FullType(GReadPokemonData_pokemon_moves)])));
    }
    return result;
  }

  @override
  GReadPokemonData_pokemon deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GReadPokemonData_pokemonBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'sprites':
          result.sprites.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GReadPokemonData_pokemon_sprites))!
              as GReadPokemonData_pokemon_sprites);
          break;
        case 'abilities':
          result.abilities.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GReadPokemonData_pokemon_abilities)
              ]))! as BuiltList<Object>);
          break;
        case 'types':
          result.types.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GReadPokemonData_pokemon_types)
              ]))! as BuiltList<Object>);
          break;
        case 'stats':
          result.stats.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GReadPokemonData_pokemon_stats)
              ]))! as BuiltList<Object>);
          break;
        case 'moves':
          result.moves.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GReadPokemonData_pokemon_moves)
              ]))! as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$GReadPokemonData_pokemon_spritesSerializer
    implements StructuredSerializer<GReadPokemonData_pokemon_sprites> {
  @override
  final Iterable<Type> types = const [
    GReadPokemonData_pokemon_sprites,
    _$GReadPokemonData_pokemon_sprites
  ];
  @override
  final String wireName = 'GReadPokemonData_pokemon_sprites';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GReadPokemonData_pokemon_sprites object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.front_default;
    if (value != null) {
      result
        ..add('front_default')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GReadPokemonData_pokemon_sprites deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GReadPokemonData_pokemon_spritesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'front_default':
          result.front_default = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GReadPokemonData_pokemon_abilitiesSerializer
    implements StructuredSerializer<GReadPokemonData_pokemon_abilities> {
  @override
  final Iterable<Type> types = const [
    GReadPokemonData_pokemon_abilities,
    _$GReadPokemonData_pokemon_abilities
  ];
  @override
  final String wireName = 'GReadPokemonData_pokemon_abilities';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GReadPokemonData_pokemon_abilities object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.ability;
    if (value != null) {
      result
        ..add('ability')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GReadPokemonData_pokemon_abilities_ability)));
    }
    return result;
  }

  @override
  GReadPokemonData_pokemon_abilities deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GReadPokemonData_pokemon_abilitiesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'ability':
          result.ability.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GReadPokemonData_pokemon_abilities_ability))!
              as GReadPokemonData_pokemon_abilities_ability);
          break;
      }
    }

    return result.build();
  }
}

class _$GReadPokemonData_pokemon_abilities_abilitySerializer
    implements
        StructuredSerializer<GReadPokemonData_pokemon_abilities_ability> {
  @override
  final Iterable<Type> types = const [
    GReadPokemonData_pokemon_abilities_ability,
    _$GReadPokemonData_pokemon_abilities_ability
  ];
  @override
  final String wireName = 'GReadPokemonData_pokemon_abilities_ability';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GReadPokemonData_pokemon_abilities_ability object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GReadPokemonData_pokemon_abilities_ability deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GReadPokemonData_pokemon_abilities_abilityBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GReadPokemonData_pokemon_typesSerializer
    implements StructuredSerializer<GReadPokemonData_pokemon_types> {
  @override
  final Iterable<Type> types = const [
    GReadPokemonData_pokemon_types,
    _$GReadPokemonData_pokemon_types
  ];
  @override
  final String wireName = 'GReadPokemonData_pokemon_types';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GReadPokemonData_pokemon_types object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GReadPokemonData_pokemon_types_type)));
    }
    return result;
  }

  @override
  GReadPokemonData_pokemon_types deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GReadPokemonData_pokemon_typesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'type':
          result.type.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GReadPokemonData_pokemon_types_type))!
              as GReadPokemonData_pokemon_types_type);
          break;
      }
    }

    return result.build();
  }
}

class _$GReadPokemonData_pokemon_types_typeSerializer
    implements StructuredSerializer<GReadPokemonData_pokemon_types_type> {
  @override
  final Iterable<Type> types = const [
    GReadPokemonData_pokemon_types_type,
    _$GReadPokemonData_pokemon_types_type
  ];
  @override
  final String wireName = 'GReadPokemonData_pokemon_types_type';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GReadPokemonData_pokemon_types_type object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GReadPokemonData_pokemon_types_type deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GReadPokemonData_pokemon_types_typeBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GReadPokemonData_pokemon_statsSerializer
    implements StructuredSerializer<GReadPokemonData_pokemon_stats> {
  @override
  final Iterable<Type> types = const [
    GReadPokemonData_pokemon_stats,
    _$GReadPokemonData_pokemon_stats
  ];
  @override
  final String wireName = 'GReadPokemonData_pokemon_stats';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GReadPokemonData_pokemon_stats object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.base_stat;
    if (value != null) {
      result
        ..add('base_stat')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GReadPokemonData_pokemon_stats deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GReadPokemonData_pokemon_statsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'base_stat':
          result.base_stat = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$GReadPokemonData_pokemon_movesSerializer
    implements StructuredSerializer<GReadPokemonData_pokemon_moves> {
  @override
  final Iterable<Type> types = const [
    GReadPokemonData_pokemon_moves,
    _$GReadPokemonData_pokemon_moves
  ];
  @override
  final String wireName = 'GReadPokemonData_pokemon_moves';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GReadPokemonData_pokemon_moves object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.move;
    if (value != null) {
      result
        ..add('move')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GReadPokemonData_pokemon_moves_move)));
    }
    value = object.version_group_details;
    if (value != null) {
      result
        ..add('version_group_details')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  GReadPokemonData_pokemon_moves_version_group_details)
            ])));
    }
    return result;
  }

  @override
  GReadPokemonData_pokemon_moves deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GReadPokemonData_pokemon_movesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'move':
          result.move.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GReadPokemonData_pokemon_moves_move))!
              as GReadPokemonData_pokemon_moves_move);
          break;
        case 'version_group_details':
          result.version_group_details.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    GReadPokemonData_pokemon_moves_version_group_details)
              ]))! as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$GReadPokemonData_pokemon_moves_moveSerializer
    implements StructuredSerializer<GReadPokemonData_pokemon_moves_move> {
  @override
  final Iterable<Type> types = const [
    GReadPokemonData_pokemon_moves_move,
    _$GReadPokemonData_pokemon_moves_move
  ];
  @override
  final String wireName = 'GReadPokemonData_pokemon_moves_move';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GReadPokemonData_pokemon_moves_move object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GReadPokemonData_pokemon_moves_move deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GReadPokemonData_pokemon_moves_moveBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GReadPokemonData_pokemon_moves_version_group_detailsSerializer
    implements
        StructuredSerializer<
            GReadPokemonData_pokemon_moves_version_group_details> {
  @override
  final Iterable<Type> types = const [
    GReadPokemonData_pokemon_moves_version_group_details,
    _$GReadPokemonData_pokemon_moves_version_group_details
  ];
  @override
  final String wireName =
      'GReadPokemonData_pokemon_moves_version_group_details';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GReadPokemonData_pokemon_moves_version_group_details object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.version_group;
    if (value != null) {
      result
        ..add('version_group')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GReadPokemonData_pokemon_moves_version_group_details_version_group)));
    }
    return result;
  }

  @override
  GReadPokemonData_pokemon_moves_version_group_details deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GReadPokemonData_pokemon_moves_version_group_detailsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'version_group':
          result.version_group.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GReadPokemonData_pokemon_moves_version_group_details_version_group))!
              as GReadPokemonData_pokemon_moves_version_group_details_version_group);
          break;
      }
    }

    return result.build();
  }
}

class _$GReadPokemonData_pokemon_moves_version_group_details_version_groupSerializer
    implements
        StructuredSerializer<
            GReadPokemonData_pokemon_moves_version_group_details_version_group> {
  @override
  final Iterable<Type> types = const [
    GReadPokemonData_pokemon_moves_version_group_details_version_group,
    _$GReadPokemonData_pokemon_moves_version_group_details_version_group
  ];
  @override
  final String wireName =
      'GReadPokemonData_pokemon_moves_version_group_details_version_group';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GReadPokemonData_pokemon_moves_version_group_details_version_group object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GReadPokemonData_pokemon_moves_version_group_details_version_group
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GReadPokemonData_pokemon_moves_version_group_details_version_groupBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GReadPokemonData extends GReadPokemonData {
  @override
  final String G__typename;
  @override
  final GReadPokemonData_pokemon? pokemon;

  factory _$GReadPokemonData(
          [void Function(GReadPokemonDataBuilder)? updates]) =>
      (new GReadPokemonDataBuilder()..update(updates)).build();

  _$GReadPokemonData._({required this.G__typename, this.pokemon}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GReadPokemonData', 'G__typename');
  }

  @override
  GReadPokemonData rebuild(void Function(GReadPokemonDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GReadPokemonDataBuilder toBuilder() =>
      new GReadPokemonDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GReadPokemonData &&
        G__typename == other.G__typename &&
        pokemon == other.pokemon;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), pokemon.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GReadPokemonData')
          ..add('G__typename', G__typename)
          ..add('pokemon', pokemon))
        .toString();
  }
}

class GReadPokemonDataBuilder
    implements Builder<GReadPokemonData, GReadPokemonDataBuilder> {
  _$GReadPokemonData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GReadPokemonData_pokemonBuilder? _pokemon;
  GReadPokemonData_pokemonBuilder get pokemon =>
      _$this._pokemon ??= new GReadPokemonData_pokemonBuilder();
  set pokemon(GReadPokemonData_pokemonBuilder? pokemon) =>
      _$this._pokemon = pokemon;

  GReadPokemonDataBuilder() {
    GReadPokemonData._initializeBuilder(this);
  }

  GReadPokemonDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _pokemon = $v.pokemon?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GReadPokemonData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GReadPokemonData;
  }

  @override
  void update(void Function(GReadPokemonDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GReadPokemonData build() {
    _$GReadPokemonData _$result;
    try {
      _$result = _$v ??
          new _$GReadPokemonData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GReadPokemonData', 'G__typename'),
              pokemon: _pokemon?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'pokemon';
        _pokemon?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GReadPokemonData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GReadPokemonData_pokemon extends GReadPokemonData_pokemon {
  @override
  final String G__typename;
  @override
  final String? name;
  @override
  final GReadPokemonData_pokemon_sprites? sprites;
  @override
  final BuiltList<GReadPokemonData_pokemon_abilities>? abilities;
  @override
  final BuiltList<GReadPokemonData_pokemon_types>? types;
  @override
  final BuiltList<GReadPokemonData_pokemon_stats>? stats;
  @override
  final BuiltList<GReadPokemonData_pokemon_moves>? moves;

  factory _$GReadPokemonData_pokemon(
          [void Function(GReadPokemonData_pokemonBuilder)? updates]) =>
      (new GReadPokemonData_pokemonBuilder()..update(updates)).build();

  _$GReadPokemonData_pokemon._(
      {required this.G__typename,
      this.name,
      this.sprites,
      this.abilities,
      this.types,
      this.stats,
      this.moves})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GReadPokemonData_pokemon', 'G__typename');
  }

  @override
  GReadPokemonData_pokemon rebuild(
          void Function(GReadPokemonData_pokemonBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GReadPokemonData_pokemonBuilder toBuilder() =>
      new GReadPokemonData_pokemonBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GReadPokemonData_pokemon &&
        G__typename == other.G__typename &&
        name == other.name &&
        sprites == other.sprites &&
        abilities == other.abilities &&
        types == other.types &&
        stats == other.stats &&
        moves == other.moves;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, G__typename.hashCode), name.hashCode),
                        sprites.hashCode),
                    abilities.hashCode),
                types.hashCode),
            stats.hashCode),
        moves.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GReadPokemonData_pokemon')
          ..add('G__typename', G__typename)
          ..add('name', name)
          ..add('sprites', sprites)
          ..add('abilities', abilities)
          ..add('types', types)
          ..add('stats', stats)
          ..add('moves', moves))
        .toString();
  }
}

class GReadPokemonData_pokemonBuilder
    implements
        Builder<GReadPokemonData_pokemon, GReadPokemonData_pokemonBuilder> {
  _$GReadPokemonData_pokemon? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GReadPokemonData_pokemon_spritesBuilder? _sprites;
  GReadPokemonData_pokemon_spritesBuilder get sprites =>
      _$this._sprites ??= new GReadPokemonData_pokemon_spritesBuilder();
  set sprites(GReadPokemonData_pokemon_spritesBuilder? sprites) =>
      _$this._sprites = sprites;

  ListBuilder<GReadPokemonData_pokemon_abilities>? _abilities;
  ListBuilder<GReadPokemonData_pokemon_abilities> get abilities =>
      _$this._abilities ??=
          new ListBuilder<GReadPokemonData_pokemon_abilities>();
  set abilities(ListBuilder<GReadPokemonData_pokemon_abilities>? abilities) =>
      _$this._abilities = abilities;

  ListBuilder<GReadPokemonData_pokemon_types>? _types;
  ListBuilder<GReadPokemonData_pokemon_types> get types =>
      _$this._types ??= new ListBuilder<GReadPokemonData_pokemon_types>();
  set types(ListBuilder<GReadPokemonData_pokemon_types>? types) =>
      _$this._types = types;

  ListBuilder<GReadPokemonData_pokemon_stats>? _stats;
  ListBuilder<GReadPokemonData_pokemon_stats> get stats =>
      _$this._stats ??= new ListBuilder<GReadPokemonData_pokemon_stats>();
  set stats(ListBuilder<GReadPokemonData_pokemon_stats>? stats) =>
      _$this._stats = stats;

  ListBuilder<GReadPokemonData_pokemon_moves>? _moves;
  ListBuilder<GReadPokemonData_pokemon_moves> get moves =>
      _$this._moves ??= new ListBuilder<GReadPokemonData_pokemon_moves>();
  set moves(ListBuilder<GReadPokemonData_pokemon_moves>? moves) =>
      _$this._moves = moves;

  GReadPokemonData_pokemonBuilder() {
    GReadPokemonData_pokemon._initializeBuilder(this);
  }

  GReadPokemonData_pokemonBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _name = $v.name;
      _sprites = $v.sprites?.toBuilder();
      _abilities = $v.abilities?.toBuilder();
      _types = $v.types?.toBuilder();
      _stats = $v.stats?.toBuilder();
      _moves = $v.moves?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GReadPokemonData_pokemon other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GReadPokemonData_pokemon;
  }

  @override
  void update(void Function(GReadPokemonData_pokemonBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GReadPokemonData_pokemon build() {
    _$GReadPokemonData_pokemon _$result;
    try {
      _$result = _$v ??
          new _$GReadPokemonData_pokemon._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GReadPokemonData_pokemon', 'G__typename'),
              name: name,
              sprites: _sprites?.build(),
              abilities: _abilities?.build(),
              types: _types?.build(),
              stats: _stats?.build(),
              moves: _moves?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'sprites';
        _sprites?.build();
        _$failedField = 'abilities';
        _abilities?.build();
        _$failedField = 'types';
        _types?.build();
        _$failedField = 'stats';
        _stats?.build();
        _$failedField = 'moves';
        _moves?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GReadPokemonData_pokemon', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GReadPokemonData_pokemon_sprites
    extends GReadPokemonData_pokemon_sprites {
  @override
  final String G__typename;
  @override
  final String? front_default;

  factory _$GReadPokemonData_pokemon_sprites(
          [void Function(GReadPokemonData_pokemon_spritesBuilder)? updates]) =>
      (new GReadPokemonData_pokemon_spritesBuilder()..update(updates)).build();

  _$GReadPokemonData_pokemon_sprites._(
      {required this.G__typename, this.front_default})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GReadPokemonData_pokemon_sprites', 'G__typename');
  }

  @override
  GReadPokemonData_pokemon_sprites rebuild(
          void Function(GReadPokemonData_pokemon_spritesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GReadPokemonData_pokemon_spritesBuilder toBuilder() =>
      new GReadPokemonData_pokemon_spritesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GReadPokemonData_pokemon_sprites &&
        G__typename == other.G__typename &&
        front_default == other.front_default;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), front_default.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GReadPokemonData_pokemon_sprites')
          ..add('G__typename', G__typename)
          ..add('front_default', front_default))
        .toString();
  }
}

class GReadPokemonData_pokemon_spritesBuilder
    implements
        Builder<GReadPokemonData_pokemon_sprites,
            GReadPokemonData_pokemon_spritesBuilder> {
  _$GReadPokemonData_pokemon_sprites? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _front_default;
  String? get front_default => _$this._front_default;
  set front_default(String? front_default) =>
      _$this._front_default = front_default;

  GReadPokemonData_pokemon_spritesBuilder() {
    GReadPokemonData_pokemon_sprites._initializeBuilder(this);
  }

  GReadPokemonData_pokemon_spritesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _front_default = $v.front_default;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GReadPokemonData_pokemon_sprites other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GReadPokemonData_pokemon_sprites;
  }

  @override
  void update(void Function(GReadPokemonData_pokemon_spritesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GReadPokemonData_pokemon_sprites build() {
    final _$result = _$v ??
        new _$GReadPokemonData_pokemon_sprites._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, 'GReadPokemonData_pokemon_sprites', 'G__typename'),
            front_default: front_default);
    replace(_$result);
    return _$result;
  }
}

class _$GReadPokemonData_pokemon_abilities
    extends GReadPokemonData_pokemon_abilities {
  @override
  final String G__typename;
  @override
  final GReadPokemonData_pokemon_abilities_ability? ability;

  factory _$GReadPokemonData_pokemon_abilities(
          [void Function(GReadPokemonData_pokemon_abilitiesBuilder)?
              updates]) =>
      (new GReadPokemonData_pokemon_abilitiesBuilder()..update(updates))
          .build();

  _$GReadPokemonData_pokemon_abilities._(
      {required this.G__typename, this.ability})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GReadPokemonData_pokemon_abilities', 'G__typename');
  }

  @override
  GReadPokemonData_pokemon_abilities rebuild(
          void Function(GReadPokemonData_pokemon_abilitiesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GReadPokemonData_pokemon_abilitiesBuilder toBuilder() =>
      new GReadPokemonData_pokemon_abilitiesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GReadPokemonData_pokemon_abilities &&
        G__typename == other.G__typename &&
        ability == other.ability;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), ability.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GReadPokemonData_pokemon_abilities')
          ..add('G__typename', G__typename)
          ..add('ability', ability))
        .toString();
  }
}

class GReadPokemonData_pokemon_abilitiesBuilder
    implements
        Builder<GReadPokemonData_pokemon_abilities,
            GReadPokemonData_pokemon_abilitiesBuilder> {
  _$GReadPokemonData_pokemon_abilities? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GReadPokemonData_pokemon_abilities_abilityBuilder? _ability;
  GReadPokemonData_pokemon_abilities_abilityBuilder get ability =>
      _$this._ability ??=
          new GReadPokemonData_pokemon_abilities_abilityBuilder();
  set ability(GReadPokemonData_pokemon_abilities_abilityBuilder? ability) =>
      _$this._ability = ability;

  GReadPokemonData_pokemon_abilitiesBuilder() {
    GReadPokemonData_pokemon_abilities._initializeBuilder(this);
  }

  GReadPokemonData_pokemon_abilitiesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _ability = $v.ability?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GReadPokemonData_pokemon_abilities other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GReadPokemonData_pokemon_abilities;
  }

  @override
  void update(
      void Function(GReadPokemonData_pokemon_abilitiesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GReadPokemonData_pokemon_abilities build() {
    _$GReadPokemonData_pokemon_abilities _$result;
    try {
      _$result = _$v ??
          new _$GReadPokemonData_pokemon_abilities._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  'GReadPokemonData_pokemon_abilities', 'G__typename'),
              ability: _ability?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ability';
        _ability?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GReadPokemonData_pokemon_abilities', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GReadPokemonData_pokemon_abilities_ability
    extends GReadPokemonData_pokemon_abilities_ability {
  @override
  final String G__typename;
  @override
  final String? name;

  factory _$GReadPokemonData_pokemon_abilities_ability(
          [void Function(GReadPokemonData_pokemon_abilities_abilityBuilder)?
              updates]) =>
      (new GReadPokemonData_pokemon_abilities_abilityBuilder()..update(updates))
          .build();

  _$GReadPokemonData_pokemon_abilities_ability._(
      {required this.G__typename, this.name})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        'GReadPokemonData_pokemon_abilities_ability', 'G__typename');
  }

  @override
  GReadPokemonData_pokemon_abilities_ability rebuild(
          void Function(GReadPokemonData_pokemon_abilities_abilityBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GReadPokemonData_pokemon_abilities_abilityBuilder toBuilder() =>
      new GReadPokemonData_pokemon_abilities_abilityBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GReadPokemonData_pokemon_abilities_ability &&
        G__typename == other.G__typename &&
        name == other.name;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), name.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'GReadPokemonData_pokemon_abilities_ability')
          ..add('G__typename', G__typename)
          ..add('name', name))
        .toString();
  }
}

class GReadPokemonData_pokemon_abilities_abilityBuilder
    implements
        Builder<GReadPokemonData_pokemon_abilities_ability,
            GReadPokemonData_pokemon_abilities_abilityBuilder> {
  _$GReadPokemonData_pokemon_abilities_ability? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GReadPokemonData_pokemon_abilities_abilityBuilder() {
    GReadPokemonData_pokemon_abilities_ability._initializeBuilder(this);
  }

  GReadPokemonData_pokemon_abilities_abilityBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GReadPokemonData_pokemon_abilities_ability other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GReadPokemonData_pokemon_abilities_ability;
  }

  @override
  void update(
      void Function(GReadPokemonData_pokemon_abilities_abilityBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GReadPokemonData_pokemon_abilities_ability build() {
    final _$result = _$v ??
        new _$GReadPokemonData_pokemon_abilities_ability._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                'GReadPokemonData_pokemon_abilities_ability', 'G__typename'),
            name: name);
    replace(_$result);
    return _$result;
  }
}

class _$GReadPokemonData_pokemon_types extends GReadPokemonData_pokemon_types {
  @override
  final String G__typename;
  @override
  final GReadPokemonData_pokemon_types_type? type;

  factory _$GReadPokemonData_pokemon_types(
          [void Function(GReadPokemonData_pokemon_typesBuilder)? updates]) =>
      (new GReadPokemonData_pokemon_typesBuilder()..update(updates)).build();

  _$GReadPokemonData_pokemon_types._({required this.G__typename, this.type})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GReadPokemonData_pokemon_types', 'G__typename');
  }

  @override
  GReadPokemonData_pokemon_types rebuild(
          void Function(GReadPokemonData_pokemon_typesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GReadPokemonData_pokemon_typesBuilder toBuilder() =>
      new GReadPokemonData_pokemon_typesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GReadPokemonData_pokemon_types &&
        G__typename == other.G__typename &&
        type == other.type;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), type.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GReadPokemonData_pokemon_types')
          ..add('G__typename', G__typename)
          ..add('type', type))
        .toString();
  }
}

class GReadPokemonData_pokemon_typesBuilder
    implements
        Builder<GReadPokemonData_pokemon_types,
            GReadPokemonData_pokemon_typesBuilder> {
  _$GReadPokemonData_pokemon_types? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GReadPokemonData_pokemon_types_typeBuilder? _type;
  GReadPokemonData_pokemon_types_typeBuilder get type =>
      _$this._type ??= new GReadPokemonData_pokemon_types_typeBuilder();
  set type(GReadPokemonData_pokemon_types_typeBuilder? type) =>
      _$this._type = type;

  GReadPokemonData_pokemon_typesBuilder() {
    GReadPokemonData_pokemon_types._initializeBuilder(this);
  }

  GReadPokemonData_pokemon_typesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _type = $v.type?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GReadPokemonData_pokemon_types other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GReadPokemonData_pokemon_types;
  }

  @override
  void update(void Function(GReadPokemonData_pokemon_typesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GReadPokemonData_pokemon_types build() {
    _$GReadPokemonData_pokemon_types _$result;
    try {
      _$result = _$v ??
          new _$GReadPokemonData_pokemon_types._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GReadPokemonData_pokemon_types', 'G__typename'),
              type: _type?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'type';
        _type?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GReadPokemonData_pokemon_types', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GReadPokemonData_pokemon_types_type
    extends GReadPokemonData_pokemon_types_type {
  @override
  final String G__typename;
  @override
  final String? name;

  factory _$GReadPokemonData_pokemon_types_type(
          [void Function(GReadPokemonData_pokemon_types_typeBuilder)?
              updates]) =>
      (new GReadPokemonData_pokemon_types_typeBuilder()..update(updates))
          .build();

  _$GReadPokemonData_pokemon_types_type._(
      {required this.G__typename, this.name})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GReadPokemonData_pokemon_types_type', 'G__typename');
  }

  @override
  GReadPokemonData_pokemon_types_type rebuild(
          void Function(GReadPokemonData_pokemon_types_typeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GReadPokemonData_pokemon_types_typeBuilder toBuilder() =>
      new GReadPokemonData_pokemon_types_typeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GReadPokemonData_pokemon_types_type &&
        G__typename == other.G__typename &&
        name == other.name;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), name.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GReadPokemonData_pokemon_types_type')
          ..add('G__typename', G__typename)
          ..add('name', name))
        .toString();
  }
}

class GReadPokemonData_pokemon_types_typeBuilder
    implements
        Builder<GReadPokemonData_pokemon_types_type,
            GReadPokemonData_pokemon_types_typeBuilder> {
  _$GReadPokemonData_pokemon_types_type? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GReadPokemonData_pokemon_types_typeBuilder() {
    GReadPokemonData_pokemon_types_type._initializeBuilder(this);
  }

  GReadPokemonData_pokemon_types_typeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GReadPokemonData_pokemon_types_type other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GReadPokemonData_pokemon_types_type;
  }

  @override
  void update(
      void Function(GReadPokemonData_pokemon_types_typeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GReadPokemonData_pokemon_types_type build() {
    final _$result = _$v ??
        new _$GReadPokemonData_pokemon_types_type._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                'GReadPokemonData_pokemon_types_type', 'G__typename'),
            name: name);
    replace(_$result);
    return _$result;
  }
}

class _$GReadPokemonData_pokemon_stats extends GReadPokemonData_pokemon_stats {
  @override
  final String G__typename;
  @override
  final int? base_stat;

  factory _$GReadPokemonData_pokemon_stats(
          [void Function(GReadPokemonData_pokemon_statsBuilder)? updates]) =>
      (new GReadPokemonData_pokemon_statsBuilder()..update(updates)).build();

  _$GReadPokemonData_pokemon_stats._(
      {required this.G__typename, this.base_stat})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GReadPokemonData_pokemon_stats', 'G__typename');
  }

  @override
  GReadPokemonData_pokemon_stats rebuild(
          void Function(GReadPokemonData_pokemon_statsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GReadPokemonData_pokemon_statsBuilder toBuilder() =>
      new GReadPokemonData_pokemon_statsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GReadPokemonData_pokemon_stats &&
        G__typename == other.G__typename &&
        base_stat == other.base_stat;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), base_stat.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GReadPokemonData_pokemon_stats')
          ..add('G__typename', G__typename)
          ..add('base_stat', base_stat))
        .toString();
  }
}

class GReadPokemonData_pokemon_statsBuilder
    implements
        Builder<GReadPokemonData_pokemon_stats,
            GReadPokemonData_pokemon_statsBuilder> {
  _$GReadPokemonData_pokemon_stats? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _base_stat;
  int? get base_stat => _$this._base_stat;
  set base_stat(int? base_stat) => _$this._base_stat = base_stat;

  GReadPokemonData_pokemon_statsBuilder() {
    GReadPokemonData_pokemon_stats._initializeBuilder(this);
  }

  GReadPokemonData_pokemon_statsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _base_stat = $v.base_stat;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GReadPokemonData_pokemon_stats other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GReadPokemonData_pokemon_stats;
  }

  @override
  void update(void Function(GReadPokemonData_pokemon_statsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GReadPokemonData_pokemon_stats build() {
    final _$result = _$v ??
        new _$GReadPokemonData_pokemon_stats._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, 'GReadPokemonData_pokemon_stats', 'G__typename'),
            base_stat: base_stat);
    replace(_$result);
    return _$result;
  }
}

class _$GReadPokemonData_pokemon_moves extends GReadPokemonData_pokemon_moves {
  @override
  final String G__typename;
  @override
  final GReadPokemonData_pokemon_moves_move? move;
  @override
  final BuiltList<GReadPokemonData_pokemon_moves_version_group_details>?
      version_group_details;

  factory _$GReadPokemonData_pokemon_moves(
          [void Function(GReadPokemonData_pokemon_movesBuilder)? updates]) =>
      (new GReadPokemonData_pokemon_movesBuilder()..update(updates)).build();

  _$GReadPokemonData_pokemon_moves._(
      {required this.G__typename, this.move, this.version_group_details})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GReadPokemonData_pokemon_moves', 'G__typename');
  }

  @override
  GReadPokemonData_pokemon_moves rebuild(
          void Function(GReadPokemonData_pokemon_movesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GReadPokemonData_pokemon_movesBuilder toBuilder() =>
      new GReadPokemonData_pokemon_movesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GReadPokemonData_pokemon_moves &&
        G__typename == other.G__typename &&
        move == other.move &&
        version_group_details == other.version_group_details;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, G__typename.hashCode), move.hashCode),
        version_group_details.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GReadPokemonData_pokemon_moves')
          ..add('G__typename', G__typename)
          ..add('move', move)
          ..add('version_group_details', version_group_details))
        .toString();
  }
}

class GReadPokemonData_pokemon_movesBuilder
    implements
        Builder<GReadPokemonData_pokemon_moves,
            GReadPokemonData_pokemon_movesBuilder> {
  _$GReadPokemonData_pokemon_moves? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GReadPokemonData_pokemon_moves_moveBuilder? _move;
  GReadPokemonData_pokemon_moves_moveBuilder get move =>
      _$this._move ??= new GReadPokemonData_pokemon_moves_moveBuilder();
  set move(GReadPokemonData_pokemon_moves_moveBuilder? move) =>
      _$this._move = move;

  ListBuilder<GReadPokemonData_pokemon_moves_version_group_details>?
      _version_group_details;
  ListBuilder<GReadPokemonData_pokemon_moves_version_group_details>
      get version_group_details =>
          _$this._version_group_details ??= new ListBuilder<
              GReadPokemonData_pokemon_moves_version_group_details>();
  set version_group_details(
          ListBuilder<GReadPokemonData_pokemon_moves_version_group_details>?
              version_group_details) =>
      _$this._version_group_details = version_group_details;

  GReadPokemonData_pokemon_movesBuilder() {
    GReadPokemonData_pokemon_moves._initializeBuilder(this);
  }

  GReadPokemonData_pokemon_movesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _move = $v.move?.toBuilder();
      _version_group_details = $v.version_group_details?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GReadPokemonData_pokemon_moves other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GReadPokemonData_pokemon_moves;
  }

  @override
  void update(void Function(GReadPokemonData_pokemon_movesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GReadPokemonData_pokemon_moves build() {
    _$GReadPokemonData_pokemon_moves _$result;
    try {
      _$result = _$v ??
          new _$GReadPokemonData_pokemon_moves._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GReadPokemonData_pokemon_moves', 'G__typename'),
              move: _move?.build(),
              version_group_details: _version_group_details?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'move';
        _move?.build();
        _$failedField = 'version_group_details';
        _version_group_details?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GReadPokemonData_pokemon_moves', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GReadPokemonData_pokemon_moves_move
    extends GReadPokemonData_pokemon_moves_move {
  @override
  final String G__typename;
  @override
  final String? name;

  factory _$GReadPokemonData_pokemon_moves_move(
          [void Function(GReadPokemonData_pokemon_moves_moveBuilder)?
              updates]) =>
      (new GReadPokemonData_pokemon_moves_moveBuilder()..update(updates))
          .build();

  _$GReadPokemonData_pokemon_moves_move._(
      {required this.G__typename, this.name})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GReadPokemonData_pokemon_moves_move', 'G__typename');
  }

  @override
  GReadPokemonData_pokemon_moves_move rebuild(
          void Function(GReadPokemonData_pokemon_moves_moveBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GReadPokemonData_pokemon_moves_moveBuilder toBuilder() =>
      new GReadPokemonData_pokemon_moves_moveBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GReadPokemonData_pokemon_moves_move &&
        G__typename == other.G__typename &&
        name == other.name;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), name.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GReadPokemonData_pokemon_moves_move')
          ..add('G__typename', G__typename)
          ..add('name', name))
        .toString();
  }
}

class GReadPokemonData_pokemon_moves_moveBuilder
    implements
        Builder<GReadPokemonData_pokemon_moves_move,
            GReadPokemonData_pokemon_moves_moveBuilder> {
  _$GReadPokemonData_pokemon_moves_move? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GReadPokemonData_pokemon_moves_moveBuilder() {
    GReadPokemonData_pokemon_moves_move._initializeBuilder(this);
  }

  GReadPokemonData_pokemon_moves_moveBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GReadPokemonData_pokemon_moves_move other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GReadPokemonData_pokemon_moves_move;
  }

  @override
  void update(
      void Function(GReadPokemonData_pokemon_moves_moveBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GReadPokemonData_pokemon_moves_move build() {
    final _$result = _$v ??
        new _$GReadPokemonData_pokemon_moves_move._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                'GReadPokemonData_pokemon_moves_move', 'G__typename'),
            name: name);
    replace(_$result);
    return _$result;
  }
}

class _$GReadPokemonData_pokemon_moves_version_group_details
    extends GReadPokemonData_pokemon_moves_version_group_details {
  @override
  final String G__typename;
  @override
  final GReadPokemonData_pokemon_moves_version_group_details_version_group?
      version_group;

  factory _$GReadPokemonData_pokemon_moves_version_group_details(
          [void Function(
                  GReadPokemonData_pokemon_moves_version_group_detailsBuilder)?
              updates]) =>
      (new GReadPokemonData_pokemon_moves_version_group_detailsBuilder()
            ..update(updates))
          .build();

  _$GReadPokemonData_pokemon_moves_version_group_details._(
      {required this.G__typename, this.version_group})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        'GReadPokemonData_pokemon_moves_version_group_details', 'G__typename');
  }

  @override
  GReadPokemonData_pokemon_moves_version_group_details rebuild(
          void Function(
                  GReadPokemonData_pokemon_moves_version_group_detailsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GReadPokemonData_pokemon_moves_version_group_detailsBuilder toBuilder() =>
      new GReadPokemonData_pokemon_moves_version_group_detailsBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GReadPokemonData_pokemon_moves_version_group_details &&
        G__typename == other.G__typename &&
        version_group == other.version_group;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), version_group.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'GReadPokemonData_pokemon_moves_version_group_details')
          ..add('G__typename', G__typename)
          ..add('version_group', version_group))
        .toString();
  }
}

class GReadPokemonData_pokemon_moves_version_group_detailsBuilder
    implements
        Builder<GReadPokemonData_pokemon_moves_version_group_details,
            GReadPokemonData_pokemon_moves_version_group_detailsBuilder> {
  _$GReadPokemonData_pokemon_moves_version_group_details? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GReadPokemonData_pokemon_moves_version_group_details_version_groupBuilder?
      _version_group;
  GReadPokemonData_pokemon_moves_version_group_details_version_groupBuilder
      get version_group => _$this._version_group ??=
          new GReadPokemonData_pokemon_moves_version_group_details_version_groupBuilder();
  set version_group(
          GReadPokemonData_pokemon_moves_version_group_details_version_groupBuilder?
              version_group) =>
      _$this._version_group = version_group;

  GReadPokemonData_pokemon_moves_version_group_detailsBuilder() {
    GReadPokemonData_pokemon_moves_version_group_details._initializeBuilder(
        this);
  }

  GReadPokemonData_pokemon_moves_version_group_detailsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _version_group = $v.version_group?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GReadPokemonData_pokemon_moves_version_group_details other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GReadPokemonData_pokemon_moves_version_group_details;
  }

  @override
  void update(
      void Function(
              GReadPokemonData_pokemon_moves_version_group_detailsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GReadPokemonData_pokemon_moves_version_group_details build() {
    _$GReadPokemonData_pokemon_moves_version_group_details _$result;
    try {
      _$result = _$v ??
          new _$GReadPokemonData_pokemon_moves_version_group_details._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  'GReadPokemonData_pokemon_moves_version_group_details',
                  'G__typename'),
              version_group: _version_group?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'version_group';
        _version_group?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GReadPokemonData_pokemon_moves_version_group_details',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GReadPokemonData_pokemon_moves_version_group_details_version_group
    extends GReadPokemonData_pokemon_moves_version_group_details_version_group {
  @override
  final String G__typename;
  @override
  final String? name;

  factory _$GReadPokemonData_pokemon_moves_version_group_details_version_group(
          [void Function(
                  GReadPokemonData_pokemon_moves_version_group_details_version_groupBuilder)?
              updates]) =>
      (new GReadPokemonData_pokemon_moves_version_group_details_version_groupBuilder()
            ..update(updates))
          .build();

  _$GReadPokemonData_pokemon_moves_version_group_details_version_group._(
      {required this.G__typename, this.name})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        'GReadPokemonData_pokemon_moves_version_group_details_version_group',
        'G__typename');
  }

  @override
  GReadPokemonData_pokemon_moves_version_group_details_version_group rebuild(
          void Function(
                  GReadPokemonData_pokemon_moves_version_group_details_version_groupBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GReadPokemonData_pokemon_moves_version_group_details_version_groupBuilder
      toBuilder() =>
          new GReadPokemonData_pokemon_moves_version_group_details_version_groupBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GReadPokemonData_pokemon_moves_version_group_details_version_group &&
        G__typename == other.G__typename &&
        name == other.name;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), name.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'GReadPokemonData_pokemon_moves_version_group_details_version_group')
          ..add('G__typename', G__typename)
          ..add('name', name))
        .toString();
  }
}

class GReadPokemonData_pokemon_moves_version_group_details_version_groupBuilder
    implements
        Builder<
            GReadPokemonData_pokemon_moves_version_group_details_version_group,
            GReadPokemonData_pokemon_moves_version_group_details_version_groupBuilder> {
  _$GReadPokemonData_pokemon_moves_version_group_details_version_group? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GReadPokemonData_pokemon_moves_version_group_details_version_groupBuilder() {
    GReadPokemonData_pokemon_moves_version_group_details_version_group
        ._initializeBuilder(this);
  }

  GReadPokemonData_pokemon_moves_version_group_details_version_groupBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GReadPokemonData_pokemon_moves_version_group_details_version_group
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GReadPokemonData_pokemon_moves_version_group_details_version_group;
  }

  @override
  void update(
      void Function(
              GReadPokemonData_pokemon_moves_version_group_details_version_groupBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GReadPokemonData_pokemon_moves_version_group_details_version_group build() {
    final _$result = _$v ??
        new _$GReadPokemonData_pokemon_moves_version_group_details_version_group
                ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                'GReadPokemonData_pokemon_moves_version_group_details_version_group',
                'G__typename'),
            name: name);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
