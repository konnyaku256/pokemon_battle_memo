import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart' show StandardJsonPlugin;
import 'package:gql_code_builder/src/serializers/operation_serializer.dart'
    show OperationSerializer;
import 'package:pokemon_battle_memo/graphql/read_pokemon.data.gql.dart'
    show
        GReadPokemonData,
        GReadPokemonData_pokemon,
        GReadPokemonData_pokemon_abilities,
        GReadPokemonData_pokemon_abilities_ability,
        GReadPokemonData_pokemon_moves,
        GReadPokemonData_pokemon_moves_move,
        GReadPokemonData_pokemon_moves_version_group_details,
        GReadPokemonData_pokemon_moves_version_group_details_version_group,
        GReadPokemonData_pokemon_sprites,
        GReadPokemonData_pokemon_stats,
        GReadPokemonData_pokemon_types,
        GReadPokemonData_pokemon_types_type;
import 'package:pokemon_battle_memo/graphql/read_pokemon.req.gql.dart'
    show GReadPokemonReq;
import 'package:pokemon_battle_memo/graphql/read_pokemon.var.gql.dart'
    show GReadPokemonVars;
import 'package:pokemon_battle_memo/schema.schema.gql.dart'
    show GCacheControlScope, GJSON, GJSONObject, GUpload;

part 'serializers.gql.g.dart';

final SerializersBuilder _serializersBuilder = _$serializers.toBuilder()
  ..add(OperationSerializer())
  ..addPlugin(StandardJsonPlugin());
@SerializersFor([
  GCacheControlScope,
  GJSON,
  GJSONObject,
  GReadPokemonData,
  GReadPokemonData_pokemon,
  GReadPokemonData_pokemon_abilities,
  GReadPokemonData_pokemon_abilities_ability,
  GReadPokemonData_pokemon_moves,
  GReadPokemonData_pokemon_moves_move,
  GReadPokemonData_pokemon_moves_version_group_details,
  GReadPokemonData_pokemon_moves_version_group_details_version_group,
  GReadPokemonData_pokemon_sprites,
  GReadPokemonData_pokemon_stats,
  GReadPokemonData_pokemon_types,
  GReadPokemonData_pokemon_types_type,
  GReadPokemonReq,
  GReadPokemonVars,
  GUpload,
])
final Serializers serializers = _serializersBuilder.build();
