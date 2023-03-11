// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:pokemon_battle_memo/graphql/read_pokemon.ast.gql.dart' as _i5;
import 'package:pokemon_battle_memo/graphql/read_pokemon.data.gql.dart' as _i2;
import 'package:pokemon_battle_memo/graphql/read_pokemon.var.gql.dart' as _i3;
import 'package:pokemon_battle_memo/serializers.gql.dart' as _i6;

part 'read_pokemon.req.gql.g.dart';

abstract class GReadPokemonReq
    implements
        Built<GReadPokemonReq, GReadPokemonReqBuilder>,
        _i1.OperationRequest<_i2.GReadPokemonData, _i3.GReadPokemonVars> {
  GReadPokemonReq._();

  factory GReadPokemonReq([Function(GReadPokemonReqBuilder b) updates]) =
      _$GReadPokemonReq;

  static void _initializeBuilder(GReadPokemonReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'ReadPokemon',
    )
    ..executeOnListen = true;
  _i3.GReadPokemonVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest => _i4.Request(
        operation: operation,
        variables: vars.toJson(),
      );
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GReadPokemonData? Function(
    _i2.GReadPokemonData?,
    _i2.GReadPokemonData?,
  )? get updateResult;
  _i2.GReadPokemonData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GReadPokemonData? parseData(Map<String, dynamic> json) =>
      _i2.GReadPokemonData.fromJson(json);
  static Serializer<GReadPokemonReq> get serializer =>
      _$gReadPokemonReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GReadPokemonReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GReadPokemonReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GReadPokemonReq.serializer,
        json,
      );
}
