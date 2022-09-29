// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:list_tile_more_customizable/list_tile_more_customizable.dart';

import '../Pages/date_time_picker.dart';

class List_View extends StatefulWidget {
  const List_View({Key? key}) : super(key: key);

  @override
  State<List_View> createState() => _List_ViewState();
}

class _List_ViewState extends State<List_View> {
  List<String> names = [
    "Noman",
    "Ashik",
    "Sakil",
    "Fatima Tuz Johra",
    "Noman",
    "Ashik",
    "Sakil",
    "Fatima Tuz Johra",
    "Noman",
    "Ashik",
    "Sakil",
    "Fatima Tuz Johra",
    "Noman",
    "Ashik",
    "Sakil",
    "Fatima Tuz Johra"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView"),
      ),
      body: ListView.builder(
          itemCount: names.length,
          itemBuilder: (context, index) {
            return ListTileMoreCustomizable(
              title: Text(names[index]),
              trailing: Icon(Icons.people),
              horizontalTitleGap: 0.0,
              minVerticalPadding: 0.0,
              minLeadingWidth: 40.0,
              onTap: (details) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DateTimePicker()),
                );
              },
            );
          }),
    );
  }
}
