import 'package:bloc/bloc.dart';

class LoaderViewCubitState {
  final int currentPercent;

  LoaderViewCubitState({required this.currentPercent});

  const LoaderViewCubitState.initial() : currentPercent = 0;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LoaderViewCubitState &&
          runtimeType == other.runtimeType &&
          currentPercent == other.currentPercent;

  @override
  int get hashCode => currentPercent.hashCode;

  LoaderViewCubitState copyWith({
    int? currentPercent,
  }) {
    return LoaderViewCubitState(
      currentPercent: currentPercent ?? this.currentPercent,
    );
  }
}

class LoaderViewCubit extends Cubit<LoaderViewCubitState> {
  LoaderViewCubit(super.initialState);

  Future<void> progressLoadDate() async {
    while (state.currentPercent < 100) {
      await Future.delayed(const Duration(milliseconds: 20));
      final newState =  state.copyWith(currentPercent: state.currentPercent + 1);
      emit(newState);
    }
  }
}
