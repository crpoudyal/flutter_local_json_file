import 'dart:convert';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Working with Json"),
      ),
      body:
          Center(
        child: Container(
          child: FutureBuilder(
            future: DefaultAssetBundle.of(context)
                .loadString('json_file/data.json'),
            builder: (context, snapshot) {
              var mydata = json.decode(snapshot.data.toString());
              return ListView.builder(
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("Name: " + mydata[index]["name"]),
                        Text("Age: " + mydata[index]["age"]),
                        Text("Degination: " + mydata[index]["Degination"]),
                       
                      ],
                    ),
                  );
                },
                itemCount: mydata == null ? 0 : mydata.length,
              );
            },
          ),
        ),
      ),
    );
  }
}
