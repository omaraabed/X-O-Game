import 'package:flutter/material.dart';
import 'package:game/BTN.dart';
import 'package:game/names.dart';

class Screan extends StatefulWidget {
  static const String routeName = 'Screan';

  @override
  State<Screan> createState() => _ScreanState();
}

class _ScreanState extends State<Screan> {
  List<String> board = [
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
  ];
  int Player1SC = 0;
  int Player2SC = 0;

  @override
  Widget build(BuildContext context) {
    var arg = ModalRoute.of(context)?.settings.arguments as playername;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black38,
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text('${arg.name1}',
                          style: TextStyle(
                              fontSize: 28, fontWeight: FontWeight.bold)),
                      Text('$Player1SC',
                          style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Colors.black)),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text('${arg.name2}',
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          )),
                      Text('$Player2SC',
                          style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Colors.black)),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                BTN(board[0], OnBoardClicked, 0),
                BTN(board[1], OnBoardClicked, 1),
                BTN(board[2], OnBoardClicked, 2),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                BTN(board[3], OnBoardClicked, 3),
                BTN(board[4], OnBoardClicked, 4),
                BTN(board[5], OnBoardClicked, 5),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                BTN(board[6], OnBoardClicked, 6),
                BTN(board[7], OnBoardClicked, 7),
                BTN(board[8], OnBoardClicked, 8),
              ],
            ),
          ),
        ],
      ),
    );
  }

  int counter = 0;

  void OnBoardClicked(index) {
    if (board[index].isNotEmpty) return;
    if (counter % 2 == 0) {
      board[index] = "X";

      bool win = CheckWinner("X");
      if (win) {
        Player1SC += 10;
        resetBord();
      }
    } else {
      board[index] = "O";

      bool win = CheckWinner("O");
      if (win) {
        Player2SC += 10;
        resetBord();
      }
    }
    counter++;

    if (counter == 9) {
      resetBord();
    }

    setState(() {});
  }

  void resetBord() {
    board = [
      '',
      '',
      '',
      '',
      '',
      '',
      '',
      '',
      '',
    ];
  }

  bool CheckWinner(String symbol) {
    for (int i = 0; i < 9; i += 3) {
      if (board[i] == symbol &&
          board[i + 1] == symbol &&
          board[i + 2] == symbol) {
        return true;
      }
    }
    for (int i = 0; i < 3; i++) {
      if (board[i] == symbol &&
          board[i + 3] == symbol &&
          board[i + 6] == symbol) {
        return true;
      }
    }

    if (board[0] == symbol && board[4] == symbol && board[8] == symbol) {
      return true;
    }
    if (board[0] == symbol && board[4] == symbol && board[8] == symbol) {
      return true;
    }
    return false;
  }
}
