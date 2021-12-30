import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  var count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contador'),
        centerTitle: true,
      ),
      body: Center(
        child: Text('Contagem: $count',
            style: TextStyle(color: Colors.white, fontSize: 18)),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              count++;
            });
          },
          child: Icon(Icons.add)),
    );
  }
}
