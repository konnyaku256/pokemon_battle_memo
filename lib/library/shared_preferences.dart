import 'package:shared_preferences/shared_preferences.dart';

// ignore: constant_identifier_names
const TMP_POKEMON_BATTLE_MEMO_JSON = "tmp_pokemon_battle_memo_json";

Future<String> getTmpPokemonBattleMemoJSON(int pokemonListIndex) async {
  final prefs = await SharedPreferences.getInstance();
  return prefs.getString('${TMP_POKEMON_BATTLE_MEMO_JSON}_$pokemonListIndex') ??
      "";
}

Future<void> setTmpPokemonBattleMemoJSON(
    int pokemonListIndex, String pokemonJSON) async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.setString(
      '${TMP_POKEMON_BATTLE_MEMO_JSON}_$pokemonListIndex', pokemonJSON);
}
