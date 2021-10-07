import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Dance',
      theme: ThemeData(

        primarySwatch: Colors.blueGrey,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //return Scaffold();
    return Scaffold(
      appBar: AppBar(title: Text("Universe is Happy")),
      body: TestWidget(),


    );
  }


}

class TestWidget extends StatefulWidget {
  @override
  _TestWidgetState createState() => _TestWidgetState();
}

class _TestWidgetState extends State<TestWidget>{

  final controller = TextEditingController();
  String text = "";

  // clean up
  @override
  void dispose()
  {
    super.dispose();
    controller.dispose();
  }

  void changeText(text)
  { if (text == "Hello")
    {
      controller.clear();
      text ="";
    }
    setState(() {
    this.text = text;
  });

  }
  @override
  Widget build(BuildContext context)
  {
    return Column( children:<Widget>[
      TextField(controller: this.controller,
    decoration: InputDecoration(
    prefixIcon: Icon(Icons.message) ,labelText: "Enter a good message"),
      onChanged: (text) => this.changeText(text),),
    Text(this.text)]);

  }

}






