import 'package:flutter/material.dart';
import 'package:game_for_you_app/ui/widgets/main_screen/widgets/top_user_widget.dart';
import '../../../../constant/style.dart';
import '../../../../domain/entity/users.dart';

class RowTopUsersWidget extends StatelessWidget {
  const RowTopUsersWidget({
    super.key,
    required this.firstTopUser,
    required this.secondTopUser,
    required this.thirdTopUser,
    required this.cost,

  });

  final String cost;
  final Users firstTopUser;
  final Users secondTopUser;
  final Users thirdTopUser;


  @override
  Widget build(BuildContext context) {
    return FittedBox(
        fit: BoxFit.none,
        child: Padding(
            padding: const  EdgeInsets.all(40),
            child: Row(children: [
              Column(children: [
                Padding(
                    padding: const  EdgeInsets.only(left: 50,  top: 40),
                    child: TopUsersWidget(
                      name: firstTopUser.name,
                      avatar: firstTopUser.avatar,
                      ratingNumber: '1',
                      cost: '${thirdTopUser.price}\$',
                      isPro: false,
                    )),
                Padding(
                    padding: const  EdgeInsets.only(left: 50, top: 5),
                    child: Column(
                      children: [
                        Text(
                          firstTopUser.name,
                          style: Styles.styleTopUsersName,),
                        Text(
                          cost,
                          style: Styles.styleTopUsersCost,)
                      ],
                    ))
              ]),
              Column(children: [
                Padding(
                    padding: const  EdgeInsets.only(
                      left: 30,
                      right: 5,

                    ),
                    child: TopUsersWidget(
                      name: thirdTopUser.name,
                      avatar: firstTopUser.avatar,
                      ratingNumber: '2',
                      cost: '${thirdTopUser.price}\$',
                      isPro: false,
                    )),
                Padding(
                    padding: const  EdgeInsets.only(left: 25, top: 5),
                    child: Column(
                      children: [
                        Text(
                          thirdTopUser.name,
                          style: Styles.styleTopUsersName,
                        ),
                        Text(
                          cost,
                          style: Styles.styleTopUsersCost,
                        ),
                      ],
                    ))
              ]),
              Column(children: [
                Padding(
                    padding: const EdgeInsets.only(left: 5,   top: 32),
                    child: TopUsersWidget(
                      cost: '${secondTopUser.price}\$',
                      name: secondTopUser.name,
                      avatar: secondTopUser.avatar,
                      ratingNumber: '3',
                      isPro: false,
                    )),
                Padding(
                    padding: EdgeInsets.only(top: 5, right: 8),
                    child: Column(children: [
                      Text(
                        secondTopUser.name,
                        style: Styles.styleTopUsersName,
                      ),
                      Text(
                        cost,
                        style: Styles.styleTopUsersCost,
                      )
                    ])),
              ]),
            ])));
  }
}
