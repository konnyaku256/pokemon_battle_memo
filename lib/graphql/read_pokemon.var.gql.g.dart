// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'read_pokemon.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GReadPokemonVars> _$gReadPokemonVarsSerializer =
    new _$GReadPokemonVarsSerializer();

class _$GReadPokemonVarsSerializer
    implements StructuredSerializer<GReadPokemonVars> {
  @override
  final Iterable<Type> types = const [GReadPokemonVars, _$GReadPokemonVars];
  @override
  final String wireName = 'GReadPokemonVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GReadPokemonVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GReadPokemonVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GReadPokemonVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GReadPokemonVars extends GReadPokemonVars {
  @override
  final String name;

  factory _$GReadPokemonVars(
          [void Function(GReadPokemonVarsBuilder)? updates]) =>
      (new GReadPokemonVarsBuilder()..update(updates)).build();

  _$GReadPokemonVars._({required this.name}) : super._() {
    BuiltValueNullFieldError.checkNotNull(name, 'GReadPokemonVars', 'name');
  }

  @override
  GReadPokemonVars rebuild(void Function(GReadPokemonVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GReadPokemonVarsBuilder toBuilder() =>
      new GReadPokemonVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GReadPokemonVars && name == other.name;
  }

  @override
  int get hashCode {
    return $jf($jc(0, name.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GReadPokemonVars')..add('name', name))
        .toString();
  }
}

class GReadPokemonVarsBuilder
    implements Builder<GReadPokemonVars, GReadPokemonVarsBuilder> {
  _$GReadPokemonVars? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GReadPokemonVarsBuilder();

  GReadPokemonVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GReadPokemonVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GReadPokemonVars;
  }

  @override
  void update(void Function(GReadPokemonVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GReadPokemonVars build() {
    final _$result = _$v ??
        new _$GReadPokemonVars._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, 'GReadPokemonVars', 'name'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
