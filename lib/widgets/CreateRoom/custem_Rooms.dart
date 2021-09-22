 import 'package:flutter/material.dart';

import 'custemCreateRoom.dart';

class Rooms extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top:12,left: 8),
              child: Container(
                alignment: Alignment.topLeft,
                child: Text(
                  "Audio and Video Rooms",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            CustemCreateRoom(),
          ],
        ),
      ),
    );
  }
}
