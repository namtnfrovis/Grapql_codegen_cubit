import 'package:demo_graphql_codegen/domain/users.graphql.dart';
import 'package:equatable/equatable.dart';

class CustomError extends Equatable {
  final String message;
  const CustomError({
    this.message = '',
  });

  @override
  List<Object> get props => [message];

  @override
  String toString() => 'CustomError(message: $message)';
}

enum UserStatus {
  initial,
  loading,
  loaded,
  error,
}

class UserState extends Equatable {
  final UserStatus status;
  final Query$GetUser$user$me user;
  final CustomError error;

  const UserState({
    required this.status,
    required this.user,
    required this.error,
  });

  factory UserState.initial() {
    return UserState(
      status: UserStatus.initial,
      user: Query$GetUser$user$me(
          id: "",
          fullname: "",
          avatarURL: "",
          email: "",
          telephone: "",
          address: "",
          $__typename: ""),
      error: const CustomError(message: ''),
    );
  }

  @override
  String toString() =>
      'ProductsState(status: $status, products: $user, error: $error)';

  @override
  List<Object> get props => [status, user, error];

  UserState copyWith({
    UserStatus? status,
    Query$GetUser$user$me? user,
    CustomError? error,
  }) {
    return UserState(
      status: status ?? this.status,
      user: user ?? this.user,
      error: error ?? this.error,
    );
  }
}
