import 'package:flutter/material.dart';

class BTN extends StatelessWidget {
  String title;
  int index;
  Function OnBoardClicked;

  BTN(this.title, this.OnBoardClicked, this.index);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
          onPressed: () {
            OnBoardClicked(index);
          },
          style: ElevatedButton.styleFrom(backgroundColor: Colors.black38),
          child: Text(
            title,
            style: TextStyle(
                fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white),
          )),
    );
  }
}
