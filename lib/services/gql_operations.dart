import 'package:ferry/ferry.dart';
import 'package:get_it/get_it.dart';
import 'package:pokemon_battle_memo/graphql/read_pokemon.data.gql.dart';
import 'package:pokemon_battle_memo/graphql/read_pokemon.req.gql.dart';
import 'package:pokemon_battle_memo/graphql/read_pokemon.var.gql.dart';

final client = GetIt.I<Client>();

Future<OperationResponse<GReadPokemonData, GReadPokemonVars>?> readPokemon(
    String pokemonName) async {
  try {
    final req = GReadPokemonReq((b) => b..vars.name = pokemonName);

    return await client.request(req).first;
  } catch (error) {
    // TODO: エラーハンドリングいい感じにしたい
    return null;
  }
}
