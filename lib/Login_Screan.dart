import 'package:flutter/material.dart';
import 'package:game/Screan_home.dart';
import 'package:game/names.dart';

class Login extends StatelessWidget {
  static const String routeName = 'game';
  var player1Controller = TextEditingController();
  var player2Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        shadowColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        title: Text('X-O GAME',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
                color: Colors.black)),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: 25,
          ),
          Container(
            padding: EdgeInsets.only(right: 15, left: 15),
            child: TextField(
              controller: player1Controller,
              decoration: InputDecoration(
                filled: true,
                fillColor: Color.fromARGB(191, 191, 191, 195),
                label: Text('Player 1',
                    style: TextStyle(
                      fontSize: 23,
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                    )),
                prefixIcon: Icon(Icons.add),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide(
                        color: Colors.black, style: BorderStyle.none)),
                labelStyle: TextStyle(color: Colors.black, fontSize: 25),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18),
                    borderSide: BorderSide(color: Colors.black)),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            padding: EdgeInsets.only(right: 15, left: 15),
            child: TextField(
              controller: player2Controller,
              decoration: InputDecoration(
                filled: true,
                fillColor: Color.fromARGB(191, 191, 191, 195),
                label: Text('Player 2',
                    style: TextStyle(
                      fontSize: 23,
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                    )),
                prefixIcon: Icon(Icons.add),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide(
                        color: Colors.black, style: BorderStyle.none)),
                labelStyle: TextStyle(color: Colors.black, fontSize: 25),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18),
                    borderSide: BorderSide(color: Colors.black)),
              ),
            ),
          ),
          SizedBox(
            height: 35,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, Screan.routeName,
                  arguments: playername(
                      player1Controller.text, player2Controller.text));
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xff000000),
                elevation: 0,
                fixedSize: Size(150, 50)),
            child: Text('Let’s Gooo !',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500)),
          )
        ],
      ),
    );
  }
}
