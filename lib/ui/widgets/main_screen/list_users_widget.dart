import 'package:flutter/material.dart';

class ListUsersWidget extends StatelessWidget {
  const ListUsersWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text('1',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 20)),
            ),
            Container(
              color: Colors.black,
              width: 30,
              height: 30,
            ),
            const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  'Fabiam Bob',
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 17),
                )),
            Padding(
              padding: EdgeInsets.only(left: 100),
              child: Text(
                '14',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
              ),
            ),
            Icon(Icons.currency_bitcoin)
          ],
        ),
      ],
    );
  }
}
