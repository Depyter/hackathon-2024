import 'package:flutter/material.dart';
import 'interests.dart';

class ChooseSuit extends StatelessWidget {
  ChooseSuit();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          //title: Text('title'),
          backgroundColor: const Color(0xFFF97A18),
        ),
        backgroundColor: const Color(0xFFF97A18),
        body: Center(
          child: Column(
            children: [
              Text("Choose the suit that suits you"),
              Container(
                height: MediaQuery.of(context).size.height * 0.8,
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: GridView.count(
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    crossAxisCount: 2,
                    children: List.generate(4, (index) {
                      return Container(
                        child: IconButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(10.0),
                            ),
                          ),
                          iconSize: MediaQuery.of(context).size.width * 0.3,
                          icon: Icon(Icons.star),
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => InterestsPage(),
                              ),
                            );
                          },
                        ),
                      );
                    }),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
