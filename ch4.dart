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

        primarySwatch: Colors.lightGreen,
      ),
      home: MyHomePage(),
    );
  }
}

// class MyHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     //return Scaffold();
//     return Scaffold(
//       appBar: AppBar(title: Text("Universe is Happy")),
//       body: TestWidget(),
//
//
//     );
//   }
//
//
// }

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String text = "";

  void changeText(String text)
  {
    this.setState(() {
      this.text = text;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Universe is Happy")),
    body:Column(children:<Widget> [TestWidget(this.changeText),Text(this.text)]) );
  }

}

class TestWidget extends StatefulWidget {
  final Function(String) callback;
  TestWidget(this.callback);
  @override
  _TestWidgetState createState() => _TestWidgetState();
}

class _TestWidgetState extends State<TestWidget>{

  final controller = TextEditingController();


  // clean up
  @override
  void dispose()
  {
    super.dispose();
    controller.dispose();
  }
  void click()
  {
 widget.callback(controller.text);
 controller.clear();
}

  @override
  Widget build(BuildContext context)
  {
    return Column( children:<Widget>[
      TextField(controller: this.controller,
        decoration: InputDecoration(
            prefixIcon: Icon(Icons.message) ,labelText: "Enter a good message",
        suffixIcon:IconButton(
            icon:Icon(Icons.send),
            splashColor:Colors.blue ,
            tooltip: "Post message",
            onPressed: ()=>this.click() ))

      )]) ;

  }

}





