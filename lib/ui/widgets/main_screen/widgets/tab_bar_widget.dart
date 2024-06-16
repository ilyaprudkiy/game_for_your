import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:game_for_you_app/ui/widgets/main_screen/cubit/users_screen_cubit.dart';

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final cubit = context.watch<UsersScreenCubit>();
    return Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
              child: ElevatedButton(
            onPressed: () {
              cubit.onTabButton();
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: cubit.state.tabButton == true
                    ? Colors.grey.shade200
                    : Colors.deepPurpleAccent,
                // Background color
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10))),
            child: Text(
              'За неделю',
              style: TextStyle(
                  color: cubit.state.tabButton == true
                      ? Colors.black
                      : Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 17),
            ),
          )),
          GestureDetector(
              child: ElevatedButton(
                  onPressed: () {
                    cubit.on();
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: cubit.state.tabButton == false
                          ? Colors.grey.shade200
                          : Colors.deepPurpleAccent,
                      // Background color
                      padding: const EdgeInsets.symmetric(
                        horizontal: 30,
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      child: Text(
                        'За месяц',
                        style: TextStyle(
                            color: cubit.state.tabButton == false
                                ? Colors.black
                                : Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 17),
                      ))))
        ]);
  }
}
