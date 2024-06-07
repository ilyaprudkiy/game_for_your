import 'package:bloc/bloc.dart';

import '../../../domain/entity/users.dart';

class UsersListContainer {
  final List<Users> userList;

  const UsersListContainer.initial() : userList = const <Users>[];

  UsersListContainer({required this.userList});

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UsersListContainer &&
          runtimeType == other.runtimeType &&
          userList == other.userList;

  @override
  int get hashCode => userList.hashCode;

  UsersListContainer copyWith({
    List<Users>? user,
  }) {
    return UsersListContainer(
      userList: user ?? this.userList,
    );
  }
}

class UsersScreenCubitState {
  final UsersListContainer usersContainer;
  final UsersListContainer userProContainer;

  UsersScreenCubitState({required this.usersContainer, required this.userProContainer});

  const UsersScreenCubitState.initial()
      : userProContainer = const UsersListContainer.initial(),
        usersContainer = const UsersListContainer.initial();
}

class UsersScreenCubit extends Cubit<UsersScreenCubitState> {
  UsersScreenCubit(super.initialState);
}
