// ignore_for_file: curly_braces_in_flow_control_structures, prefer_const_constructors

import 'package:flutter/material.dart';

class DateTimePicker extends StatefulWidget {
  const DateTimePicker({Key? key}) : super(key: key);

  @override
  State<DateTimePicker> createState() => _DateTimePickerState();
}

class _DateTimePickerState extends State<DateTimePicker> {
  DateTime? dateTime = DateTime.now();

  Future<void> _selectDate(context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: dateTime!,
        firstDate: DateTime(2001),
        lastDate: DateTime(2025));
    if (picked != null) {
      setState(() {
        dateTime = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OrientationBuilder(builder: (_, orientation) {
        if (orientation == Orientation.portrait)
          // if orientation is portrait, show your portrait layout
          return _buildPortraitLayout();
        else
          // else show the landscape one
          return _buildLandscapeLayout();
      }),
    );
  }

  Widget _buildPortraitLayout() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Colors.purple,
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(dateTime.toString(),style: TextStyle(color: Colors.white,fontSize: 20.0,fontWeight: FontWeight.bold)),
            ElevatedButton(
                onPressed: () {
                  _selectDate(context);
                },
                child:Text("Select Date",style: TextStyle(color: Colors.white,fontSize: 20.0,fontWeight: FontWeight.bold),))
          ],
        ),
      ),
    );
  }

  Widget _buildLandscapeLayout() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Colors.pink,
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(dateTime.toString(),style: TextStyle(color: Colors.white,fontSize: 20.0,fontWeight: FontWeight.bold)),
            ElevatedButton(
                onPressed: () {
                  _selectDate(context);
                },
                child: Text("Select Date",style: TextStyle(color: Colors.white,fontSize: 20.0,fontWeight: FontWeight.bold),))
          ],
        ),
      ),
    );
  }
}
