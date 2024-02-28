import 'package:flutter/material.dart';

class ChooseSuit extends StatelessWidget {
  ChooseSuit();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.orangeAccent,
        body: Column(
          children: [
            Text("Choose the suit that suits you"),
            Row(children: [
              Container(height: MediaQuery.of(context).size.height * 0.4, width: double.infinity, child: Expanded(child: ElevatedButton(onPressed: (){}, child: Text("Three")))),
              Container(height: MediaQuery.of(context).size.height * 0.4, width: double.infinity, child: Expanded(child: ElevatedButton(onPressed: (){}, child: Text("Three")))),
            ],),
            Row(children: [
              Expanded(child: ElevatedButton(onPressed: (){}, child: Text("Three"))),
              Expanded(child: ElevatedButton(onPressed: (){}, child: Text("Three"))),
            ],),
          ],
        ),
      ),
    );
  }
}
