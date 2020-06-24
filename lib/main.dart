import 'package:flutter/material.dart';
import 'package:json_demo/homepage.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Json Demo",
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: HomePage(),
    ));
