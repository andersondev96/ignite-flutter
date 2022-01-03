import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CreateNotePage extends StatefulWidget {
  @override
  State<CreateNotePage> createState() => _CreateNotePageState();
}

class _CreateNotePageState extends State<CreateNotePage> {
  var description = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Create Note"),
          centerTitle: true,
          actions: [IconButton(icon: Icon(Icons.delete), onPressed: () {})],
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextField(
                maxLines: null,
                onChanged: (value) {
                  description = value;
                  setState(() {});
                },
              ),
              if (description.isNotEmpty)
                ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context, description);
                    },
                    child: Text("Salvar"))
            ],
          ),
        ));
  }
}