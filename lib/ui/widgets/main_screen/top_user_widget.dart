import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:game_for_you_app/ui/widgets/main_screen/users_screen_cubit.dart';

class TopUserWidget extends StatelessWidget {
  const TopUserWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row( children: [  Column(children: [ Padding(padding: EdgeInsets.only(left: 60,  top: 60),
        child:Container(
          color: Colors.red,
          height: 50,
          width: 50,
        )),
      Padding(padding: EdgeInsets.only(left: 60) , child:Text('das')),
      Padding(padding: EdgeInsets.only(left: 60), child: Text('131322'))]),
      Column( children: [ Padding(padding: EdgeInsets.only(left: 60,top: 20),
          child:Container(
            color: Colors.red,
            height: 50,
            width: 50,
          )),
        Padding(padding: EdgeInsets.only(left: 60) , child:Text('das')),
        Padding(padding: EdgeInsets.only(left: 60), child: Text('131322'))
      ]),
      Column( children: [ Padding(padding: EdgeInsets.only(left: 60,top: 50),
          child:Container(
            color: Colors.red,
            height: 50,
            width: 50,
          )),
        Padding(padding: EdgeInsets.only(left: 60) , child:Text('das')),
        Padding(padding: EdgeInsets.only(left: 60), child: Text('131322'))
      ]),

    ]);
  }
}