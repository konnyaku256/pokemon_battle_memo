import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:ferry/ferry.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:pokemon_battle_memo/app.dart';

import 'package:pokemon_battle_memo/services/pokeapi_graphql_client.dart';

import 'library/translate.dart';

void main() async {
  // runApp の実行前に Flutter Engine の機能を利用できるようにする
  // ex. PackageInfo.fromPlatform()
  WidgetsFlutterBinding.ensureInitialized();

  // パッケージ情報の取得
  final packageInfo = await PackageInfo.fromPlatform();
  GetIt.I.registerLazySingleton<PackageInfo>(() => packageInfo);

  // PokeAPI GraphQL Client の初期化
  final pokeapiGQLClient = await initPokeAPIGraphQLClient();
  GetIt.I.registerLazySingleton<Client>(() => pokeapiGQLClient);

  // CarouselController の初期化
  final carouselController = CarouselController();
  GetIt.I.registerLazySingleton<CarouselController>(() => carouselController);

  // CSV Map の初期化
  final csvMap = await initCsvMap();
  GetIt.I.registerLazySingleton<Map<String, List<List>>>(() => csvMap);

  runApp(const PokemonBattleMemo());
}
