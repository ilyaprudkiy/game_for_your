import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../../../constant/style.dart';

class UserItem extends StatelessWidget {
  final String? avatar;
  final String name;
  final String numbers;
  final String price;

  const UserItem({
    super.key,
    this.avatar,
    required this.name,
    required this.numbers,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        children: [
          FittedBox(
              fit: BoxFit.fill,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 25),
                child: Text(numbers, style: Styles.styleUserItemNumber),
              )),
          avatar != null
              ? Stack(children: [
                  Center(
                      child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(
                      fit: BoxFit.cover,
                      avatar!,
                      height: 60,
                      width: 60,
                    ),
                  ))
                ])
              : Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 1,
                  ),
                  child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.blue),
                      height: 60,
                      width: 60,
                      child: Text(name[0], style: Styles.styleTopUserCard))),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                name,
                style: Styles.styleUserItemName,
              )),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(left: 100),
            child: Text(
              price,
              style: Styles.styleUserPrice,
            ),
          ),
        ],
      )
    ]);
  }
}
