import 'package:bloc/bloc.dart';
import '../../../../domain/api_client/api_client_users.dart';
import '../../../../domain/entity/users.dart';

class UsersScreenCubitState {
  final List<Users> topUsersList;
  final List<Users> usersList;
  final bool isLoading;
  final String error;
  final bool tabButton;
  final bool tabButtonSearch;

  const UsersScreenCubitState.initial()
      : tabButtonSearch = false,
        tabButton = false,
        isLoading = false,
        topUsersList = const [],
        usersList = const [],
        error = '';

  UsersScreenCubitState({
    required this.tabButtonSearch,
    required this.tabButton,
    required this.topUsersList,
    required this.usersList,
    required this.isLoading,
    required this.error,
  });

  UsersScreenCubitState copyWith({
    List<Users>? topUsersList,
    List<Users>? usersList,
    bool? isLoading,
    String? error,
    bool? tabButton,
    bool? tabButtonSearch,
  }) =>
      UsersScreenCubitState(
        topUsersList: topUsersList ?? this.topUsersList,
        usersList: usersList ?? this.usersList,
        isLoading: isLoading ?? this.isLoading,
        error: error ?? '',
        tabButton: tabButton ?? this.tabButton,
        tabButtonSearch: tabButtonSearch ?? this.tabButtonSearch,
      );
}

class UsersScreenCubit extends Cubit<UsersScreenCubitState> {
  final _client = ApiClientUsers();

  UsersScreenCubit() : super(const UsersScreenCubitState.initial()) {
    _getUsers();
  }

  void onTabButton() {
    final newState = state.copyWith(tabButton: false);
    emit(newState);
  }

  void on() {
    final newState = state.copyWith(tabButton: true);
    emit(newState);
  }

  Future<void> _getUsers() async {
    emit(state.copyWith(isLoading: true));
    final users = await _client.fetchUsersData();

    users.sort((a, b) => b.price.compareTo(a.price));

    final topUsersList = users.getRange(0, 3).toList();
    final usersList = users.getRange(3, users.length - 1).toList();

    if (topUsersList.isNotEmpty && usersList.isNotEmpty) {
      final newState = state.copyWith(
          topUsersList: topUsersList, usersList: usersList, isLoading: false);
      emit(newState);
    } else {
      throw Error();
    }
  }
}
