import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:game_for_you_app/ui/widgets/main_screen/popular_users_time_widget.dart';
import 'package:game_for_you_app/ui/widgets/main_screen/top_user_widget.dart';
import 'package:game_for_you_app/ui/widgets/main_screen/users_screen_cubit.dart';
import 'package:provider/provider.dart';

import 'list_users_widget.dart';

class UsersScreenWidget extends StatefulWidget {
  const UsersScreenWidget({super.key});

  @override
  _UsersScreenState createState() => _UsersScreenState();
}

class _UsersScreenState extends State<UsersScreenWidget> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: Text('dasad'),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
            ),
          ],
          backgroundColor: Color.fromRGBO(240, 117, 195, 9),
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
          ),
        ),
        body: ListView(

            children: [ ListWidget() ])
        );
  }
}

class ListWidget extends StatelessWidget {

  const ListWidget({
    super.key,
  });


  @override
  Widget build(BuildContext context) {


    return const  Column(children: [
      SizedBox(
        height: 20,
      ),
      PopularUsersTimeWidget(),
      TopUserWidget(),
      SizedBox(
        height: 20,
      ),
      ListUsersWidget(),
    ]);
  }
}
