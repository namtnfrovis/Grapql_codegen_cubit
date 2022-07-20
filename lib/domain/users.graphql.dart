import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:json_annotation/json_annotation.dart';
part 'users.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Query$GetUser {
  Query$GetUser({this.user, required this.$__typename});

  @override
  factory Query$GetUser.fromJson(Map<String, dynamic> json) =>
      _$Query$GetUserFromJson(json);

  final Query$GetUser$user? user;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$GetUserToJson(this);
  int get hashCode {
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([l$user, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$GetUser) || runtimeType != other.runtimeType)
      return false;
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$GetUser on Query$GetUser {
  Query$GetUser copyWith(
          {Query$GetUser$user? Function()? user, String? $__typename}) =>
      Query$GetUser(
          user: user == null ? this.user : user(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

const documentNodeQueryGetUser = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetUser'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'user'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'me'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'id'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'fullname'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'avatarURL'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'email'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'telephone'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'address'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ])),
        FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null)
      ])),
]);
Query$GetUser _parserFn$Query$GetUser(Map<String, dynamic> data) =>
    Query$GetUser.fromJson(data);

class Options$Query$GetUser extends graphql.QueryOptions<Query$GetUser> {
  Options$Query$GetUser(
      {String? operationName,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      Duration? pollInterval,
      graphql.Context? context})
      : super(
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            pollInterval: pollInterval,
            context: context,
            document: documentNodeQueryGetUser,
            parserFn: _parserFn$Query$GetUser);
}

class WatchOptions$Query$GetUser
    extends graphql.WatchQueryOptions<Query$GetUser> {
  WatchOptions$Query$GetUser(
      {String? operationName,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      Duration? pollInterval,
      bool? eagerlyFetchResults,
      bool carryForwardDataOnException = true,
      bool fetchResults = false})
      : super(
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            context: context,
            document: documentNodeQueryGetUser,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFn$Query$GetUser);
}

class FetchMoreOptions$Query$GetUser extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetUser({required graphql.UpdateQuery updateQuery})
      : super(updateQuery: updateQuery, document: documentNodeQueryGetUser);
}

extension ClientExtension$Query$GetUser on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetUser>> query$GetUser(
          [Options$Query$GetUser? options]) async =>
      await this.query(options ?? Options$Query$GetUser());
  graphql.ObservableQuery<Query$GetUser> watchQuery$GetUser(
          [WatchOptions$Query$GetUser? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$GetUser());
  void writeQuery$GetUser(
          {required Query$GetUser data, bool broadcast = true}) =>
      this.writeQuery(
          graphql.Request(
              operation: graphql.Operation(document: documentNodeQueryGetUser)),
          data: data.toJson(),
          broadcast: broadcast);
  Query$GetUser? readQuery$GetUser({bool optimistic = true}) {
    final result = this.readQuery(
        graphql.Request(
            operation: graphql.Operation(document: documentNodeQueryGetUser)),
        optimistic: optimistic);
    return result == null ? null : Query$GetUser.fromJson(result);
  }
}

@JsonSerializable(explicitToJson: true)
class Query$GetUser$user {
  Query$GetUser$user({this.me, required this.$__typename});

  @override
  factory Query$GetUser$user.fromJson(Map<String, dynamic> json) =>
      _$Query$GetUser$userFromJson(json);

  final Query$GetUser$user$me? me;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$GetUser$userToJson(this);
  int get hashCode {
    final l$me = me;
    final l$$__typename = $__typename;
    return Object.hashAll([l$me, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$GetUser$user) || runtimeType != other.runtimeType)
      return false;
    final l$me = me;
    final lOther$me = other.me;
    if (l$me != lOther$me) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$GetUser$user on Query$GetUser$user {
  Query$GetUser$user copyWith(
          {Query$GetUser$user$me? Function()? me, String? $__typename}) =>
      Query$GetUser$user(
          me: me == null ? this.me : me(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class Query$GetUser$user$me {
  Query$GetUser$user$me(
      {required this.id,
      required this.fullname,
      this.avatarURL,
      required this.email,
      required this.telephone,
      required this.address,
      required this.$__typename});

  @override
  factory Query$GetUser$user$me.fromJson(Map<String, dynamic> json) =>
      _$Query$GetUser$user$meFromJson(json);

  final String id;

  final String fullname;

  final String? avatarURL;

  final String email;

  final String telephone;

  final String address;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$GetUser$user$meToJson(this);
  int get hashCode {
    final l$id = id;
    final l$fullname = fullname;
    final l$avatarURL = avatarURL;
    final l$email = email;
    final l$telephone = telephone;
    final l$address = address;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$fullname,
      l$avatarURL,
      l$email,
      l$telephone,
      l$address,
      l$$__typename
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$GetUser$user$me) || runtimeType != other.runtimeType)
      return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$fullname = fullname;
    final lOther$fullname = other.fullname;
    if (l$fullname != lOther$fullname) return false;
    final l$avatarURL = avatarURL;
    final lOther$avatarURL = other.avatarURL;
    if (l$avatarURL != lOther$avatarURL) return false;
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) return false;
    final l$telephone = telephone;
    final lOther$telephone = other.telephone;
    if (l$telephone != lOther$telephone) return false;
    final l$address = address;
    final lOther$address = other.address;
    if (l$address != lOther$address) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$GetUser$user$me on Query$GetUser$user$me {
  Query$GetUser$user$me copyWith(
          {String? id,
          String? fullname,
          String? Function()? avatarURL,
          String? email,
          String? telephone,
          String? address,
          String? $__typename}) =>
      Query$GetUser$user$me(
          id: id == null ? this.id : id,
          fullname: fullname == null ? this.fullname : fullname,
          avatarURL: avatarURL == null ? this.avatarURL : avatarURL(),
          email: email == null ? this.email : email,
          telephone: telephone == null ? this.telephone : telephone,
          address: address == null ? this.address : address,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}
