import 'dart:math';
import 'package:flutter/material.dart';

void main(){
  runApp(const Dice());
}

class Dice extends StatefulWidget {
  const Dice ({super.key});

  @override
  State<Dice> createState() => _State();
}

class _State extends State<Dice> {
  int dice = 0;
  List sides = [
    "assets/images/dice-1.png",
    "assets/images/dice-2.png",
    "assets/images/dice-3.png",
    "assets/images/dice-4.png",
    "assets/images/dice-5.png",
    "assets/images/dice-6.png"

  ];
  String side = "";

  void rollDice() {
    int random = Random().nextInt(6);
    String randomNumber = random.toString();

     if (randomNumber == "1") {
      setState(() {
      dice = 1;
      side = sides[0];
      });
    }
    else if (randomNumber == "2") {
      setState(() {
      dice == 2;
      side = sides[1];
      });
    }
    else if (randomNumber == "3") {
      setState(() {
        dice == 3;
        side = sides[2];
      });
    }
    else if (randomNumber == "4") {
      setState(() {
      dice == 4;
      side = sides[3];
      });
    }
    else if (randomNumber == "5") {
      setState(() {
      dice == 5;
      side = sides[4];
      });
    }
    else if (randomNumber == "6") {
      setState(() {
      dice == 6;
      side = sides[5];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        home: Scaffold(appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("Klikkaður titill",
            style: TextStyle(color: Colors.black
            )
            ,)
          ,),
            body: Center(
              child:
              ElevatedButton(onPressed: rollDice,
                child: Image.asset("$side"),
              ),
              )

            ),
        );
  }
}
