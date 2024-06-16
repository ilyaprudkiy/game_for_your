import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:game_for_you_app/ui/widgets/main_screen/widgets/tab_bar_widget.dart';
import 'package:game_for_you_app/ui/widgets/main_screen/cubit/users_screen_cubit.dart';
import 'package:game_for_you_app/ui/widgets/main_screen/widgets/row_top_users_widget.dart';
import 'package:game_for_you_app/ui/widgets/main_screen/widgets/users_item_widget.dart';

import '../../../constant/style.dart';

class UsersScreenWidget extends StatelessWidget {
  const UsersScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UsersScreenCubit, UsersScreenCubitState>(
        builder: (context, state) {
      if (state.isLoading) {
        return const Center(child: CircularProgressIndicator());
      }
      final firstTopUser = state.topUsersList[0];
      final secondTopUser = state.topUsersList[1];
      final thirdTopUser = state.topUsersList[2];

      final usersList = state.usersList;
      return Scaffold(
          appBar: AppBar(
            title: Text(
              'Top Users',
              style: Styles.titleStyleMainScreen,

            ),
            centerTitle: true,
            actions: <Widget>[
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.search,
                    color: Colors.white,
                  ))
            ],
            backgroundColor: Colors.deepPurpleAccent,
            leading: IconButton(
              icon: const Icon(
                Icons.menu,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
          ),
          body: ListView(children: <Widget>[
            const SizedBox(
              height: 15,
            ),
            const TabBarWidget(),
            const SizedBox(
              height: 20,
            ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: RowTopUsersWidget(
                    firstTopUser: firstTopUser,
                    secondTopUser: secondTopUser,
                    thirdTopUser: thirdTopUser,
                    cost: '${secondTopUser.price}\$')),
            const SizedBox(
              height: 40,
            ),
            ListView.builder(
                itemCount: usersList.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return InkWell(
                      child: Column(children: [
                    UserItem(
                      name: usersList[index].name,
                      avatar: usersList[index].avatar,
                      numbers: '${index + 4}',
                      price: '${usersList[index].price}\$',
                    ),
                  ]));
                }),
          ]));
    });
  }
}
