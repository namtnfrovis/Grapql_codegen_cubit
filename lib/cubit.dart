import 'package:demo_graphql_codegen/service.dart';
import 'package:demo_graphql_codegen/state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserCubit extends Cubit<UserState> {
  final UserService userService;

  UserCubit({required this.userService}) : super(UserState.initial());

  Future<void> getUser() async {
    emit(state.copyWith(status: UserStatus.loading));
    try {
      final user = await userService.getInforUser();
      emit(state.copyWith(user: user, status: UserStatus.loaded));
    } catch (e) {
      emit(state.copyWith(
          error: CustomError(message: e.toString()), status: UserStatus.error));
    }
  }
}
