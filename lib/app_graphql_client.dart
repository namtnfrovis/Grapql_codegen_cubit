import 'package:graphql/client.dart';

const String baseUrl = "https://gw.devapi.honganh.vn/graphql";

class AppGraphQLClient {
  static final AppGraphQLClient singleton = AppGraphQLClient._internal();
  late final GraphQLClient _client;
  GraphQLClient get client => _client;

  final token =
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySUQiOjUwMSwiZXhwIjoxNjYwODgyNDEwLCJpYXQiOjE2NTgyOTA0MTAsImlzcyI6ImhhLWZ1bGZpbGxtZW50IiwibmJmIjoxNjU4MjkwNDEwfQ.45_I2uEbiKgxzESGluKhN-nV2D02aHvgmbFG27Q4qNU';

  AppGraphQLClient._internal() {
    HttpLink httpLink = HttpLink(
      baseUrl,
      defaultHeaders: {
        'Authorization': 'Bearer $token',
        'Content-Type': 'application/json',
      },
    );

    _client = GraphQLClient(
      link: httpLink,
      cache: GraphQLCache(store: InMemoryStore()),
    );
  }
}
