import 'dart:async';

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
  late Timer _timer;

  LoaderViewCubit(super.initialState);

  void startLoading() {
    const oneSec = Duration(milliseconds: 50);
    _timer = Timer.periodic(oneSec, (Timer timer) {
      final currenPecents = state.currentPercent;
      if (currenPecents >= 100) {
        _timer.cancel();
      } else {
        emit(state.copyWith(currentPercent: currenPecents + 1));
      }
    });
  }
}
