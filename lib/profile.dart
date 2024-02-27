import 'package:flutter/material.dart';



class NextOnly extends StatelessWidget{
  const NextOnly();
  
  @override
  Widget build(BuildContext context) {
    return Row(
        children: <Widget>[
          ElevatedButton(onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => QuestionsScreen()));  },
          child: Text("Next")),
        ]
    );
  }
}

class QuestionsScreen extends StatefulWidget{
  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  int _index = 0;
  TextEditingController _textEditingController = TextEditingController();
  List Questions = ['First Question', 'Second Question', 'Third Question'];
  void _increment() {
    setState(() {
      _index++;
    });
  }
  void _decrement() {
    setState(() {
      _index--;
    });
  }
  @override
  Widget build(BuildContext context) {
    switch(_index){
      case 0: return MaterialApp(
      home: Scaffold(
        body: Center(child: TextFormField(
          controller: _textEditingController,
            decoration: InputDecoration(
              border: UnderlineInputBorder(),
              labelText: "${Questions[_index]}",
            ),),),
        bottomNavigationBar: Row(
        children: <Widget>[
          ElevatedButton(onPressed: () {_textEditingController.clear();_increment(); },
          child: Text("Next")),
        ]
    ),
    ),
    );
      case 2: return MaterialApp(
      home: Scaffold(
        body: Center(child: TextFormField(
          controller: _textEditingController,
            decoration: InputDecoration(
              border: UnderlineInputBorder(),
              labelText: "${Questions[_index]}",
            ),),),
        bottomNavigationBar: Row(
        children: <Widget>[
          ElevatedButton(onPressed: () {_textEditingController.clear(); _decrement(); },
          child: Text("Prev")),
        ]
    ),
    ),
    );
      
      default: return MaterialApp(
      home: Scaffold(
        body: Center(child: TextFormField(
          controller: _textEditingController,
            decoration: InputDecoration(
              border: UnderlineInputBorder(),
              labelText: "${Questions[_index]}",
            ),),),
        bottomNavigationBar: Row(
        children: <Widget>[
          ElevatedButton(onPressed: () {_textEditingController.clear();_decrement(); },
          child: Text("Prev")),
          ElevatedButton(onPressed: () {_textEditingController.clear();_increment(); },
          child: Text("Next")),
        ]
    ),
    ),
    );

    }
    
  }
}