import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:game_for_you_app/ui/widgets/loader_screen/cubit/loader_view_cubit.dart';
import 'package:game_for_you_app/ui/widgets/main_screen/users.screen.dart';
import 'package:game_for_you_app/ui/widgets/main_screen/cubit/users_screen_cubit.dart';
import '../../ui/widgets/loader_screen/loader_widget.dart';

class ScreenFactory {


  Widget makeLoader() {
    return BlocProvider<LoaderViewCubit>(
      create: (_) =>
          LoaderViewCubit( const LoaderViewCubitState.initial()),
       lazy: false,
      child: const  LoaderWidget(),
    );
  }

  Widget makeUsersWidget() {
    return BlocProvider<UsersScreenCubit>(
      create: (context) => UsersScreenCubit(),
      child: const UsersScreenWidget(),
    );
  }
}