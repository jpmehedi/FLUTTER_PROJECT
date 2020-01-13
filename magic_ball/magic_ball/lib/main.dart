import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
  MaterialApp(
    home:MagicBall() ,
    debugShowCheckedModeBanner: false,
  )
);

class MagicBall extends StatelessWidget{
@override
Widget build(BuildContext context) {
  return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(title: Center(child: Text('Ask Me Anything')),backgroundColor: Colors.blue.shade900,),
      body: Container()
    );
  }
}
class Container extends StatefulWidget{
  _ContainerPageState createState()=> _ContainerPageState();
}

class _ContainerPageState extends State<Container>{
  var ballChangeNumber = 5;
  
  ChangeBall(){
    setState(() {
          ballChangeNumber =Random().nextInt(5)+1;
      });
  }
  
  @override 
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
           child: FlatButton(
            onPressed: (){
              ChangeBall();
            },
            child: Image.asset('images/ball$ballChangeNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}