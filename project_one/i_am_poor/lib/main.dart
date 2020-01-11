import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.lightBlue[100],
          appBar: AppBar(
            title: Center(
              child: Text("I AM POOR"),
            ),
          ),
          body:Center(child:Image(
            image:AssetImage('images/poor.png'),
          ),
          ),
        ),
        debugShowCheckedModeBanner: false,
      ),
    );
