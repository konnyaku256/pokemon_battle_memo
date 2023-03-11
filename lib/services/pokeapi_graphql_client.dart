import 'package:gql_http_link/gql_http_link.dart';
import 'package:ferry/ferry.dart';
import 'package:ferry_hive_store/ferry_hive_store.dart';
import 'package:hive_flutter/hive_flutter.dart';

Future<Client> initPokeAPIGraphQLClient() async {
  await Hive.initFlutter();

  final box = await Hive.openBox<Map<String, dynamic>>("graphql");
  await box.clear();
  final store = HiveStore(box);
  final cache = Cache(store: store);

  var link = HttpLink(
    "https://graphql-pokeapi.graphcdn.app",
  );

  final client = Client(
    link: link,
    cache: cache,
    defaultFetchPolicies: {
      OperationType.query: FetchPolicy.CacheAndNetwork,
      // OperationType.query: FetchPolicy.NetworkOnly,
      // OperationType.mutation: FetchPolicy.CacheAndNetwork,
      // OperationType.subscription: FetchPolicy.CacheAndNetwork,
    },
  );

  return client;
}
