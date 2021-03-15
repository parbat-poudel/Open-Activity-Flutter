import 'package:flutter/material.dart';

void main(){
  runApp(
  MaterialApp(

    title: 'Navigation Pages App',
    home: FirstRoute(),
  )
  );
}

class FirstRoute  extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('First Route'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Go'),
          onPressed: () {

            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) =>SecondRoute()));


        },

        ),
      ),
    );
  }
}

class SecondRoute  extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Route'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Second Route'),
          onPressed: () {

            Navigator.pop(context);

        },

        ),
      ),
    );
  }
}
