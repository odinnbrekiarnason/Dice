import 'package:flutter/material.dart';

void main(){
  runApp(const Dice());
}

class Dice extends StatelessWidget {
  const Dice ({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(appBar: AppBar(
        title: Text("Klikkaður titill",
          style: TextStyle(
              backgroundColor: Colors.blue,
              color: Colors.black
          )
          ,)
        ,),
        body: Center(
          child: Text("Body center",
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings"),
        ],
      )
     )
    );
  }
}
