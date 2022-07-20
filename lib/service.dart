import 'package:demo_graphql_codegen/app_graphql_client.dart';
import 'package:demo_graphql_codegen/domain/users.graphql.dart';

class UserService {
  Future<Query$GetUser$user$me?> getInforUser() async {
    final resulf = await AppGraphQLClient.singleton.client.query$GetUser();
    return resulf.parsedData?.user?.me;
  }
}
