import 'package:flutter/material.dart';

class PopularUsersTimeWidget extends StatelessWidget {
  const PopularUsersTimeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Positioned(
              left: 0,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple,
                    // Background color
                    padding: EdgeInsets.symmetric(
                      horizontal: 30,
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                child: Text('dasdasd'),
              )),
          Positioned(
              left: 1,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purple.shade100,
                      // Background color
                      padding: EdgeInsets.symmetric(
                        horizontal: 30,
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  child: Padding(
                      padding: EdgeInsets.all(10), child: Text('asdsa'))))
        ]);
  }
}
