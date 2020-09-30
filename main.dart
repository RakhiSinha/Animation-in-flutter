import 'package:flutter/material.dart';
import 'package:animation_app/myanim.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Animation App'),
          backgroundColor: Colors.black,
        ),
        body: MyA1(),
      ),
    ),
  );
}
