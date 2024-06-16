import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:game_for_you_app/ui/widgets/add_image/add_image.dart';
import '../../../../constant/style.dart';

class TopUsersWidget extends StatelessWidget {
  final String name;
  final String? avatar;
  final String ratingNumber;
  final String cost;
  final bool isPro;

  const TopUsersWidget(
      {super.key,
      required this.name,
      this.avatar,
      required this.ratingNumber,
      required this.cost,
      required this.isPro});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Stack(alignment: Alignment.center, children: [
            const Padding(
                padding: EdgeInsets.only(right: 10),
                child: Image(
                  image: AssetImage(AppImages.topUser),
                  height: 60,
                  width: 90,
                )),
            Padding(
                padding: const EdgeInsets.only(right: 20, top: 30, left: 15),
                child:
                    Text(ratingNumber, style: Styles.styleTopUserRatingNumber))
          ]),
          avatar != null
              ? Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                  Padding(
                      padding: const EdgeInsets.fromLTRB(40, 0, 60, 1),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.network(
                          avatar!,
                          height: 60,
                          width: 60,
                        ),
                      ))
                ])
              : Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Card(
                      color: Colors.blue,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 17, horizontal: 22),
                        child: Text(name[0], style: Styles.styleTopUserCard),
                      )),
                ),
          // Column( children: [ Padding(padding: EdgeInsets.only(left: 60), child: Text(name)),
          //  Padding(padding: EdgeInsets.only(left: 60), child: Text('131322'))])
        ]));
  }
}
