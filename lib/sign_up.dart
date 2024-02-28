import 'package:flutter/material.dart';
import 'choose_suit.dart';

class SignUp extends StatelessWidget {
  SignUp();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.4,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.orangeAccent,
                borderRadius: new BorderRadius.circular(20.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Easing Finances,",
                    ),
                    Text(
                      "Become Empowered!",
                    ),
                  ],
                ),
              ),
            ),
            Padding(
                padding: EdgeInsets.all(10),
                child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: new BorderRadius.circular(10.0),
                    ),
                    child: Padding(
                        padding: EdgeInsets.only(left: 15, right: 15, top: 5),
                        child: TextFormField(
                            decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 3, color: Colors.grey), //<-- SEE HERE
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          labelText: 'Enter Email',
                        ))))),
            Padding(
                padding: EdgeInsets.all(10),
                child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: new BorderRadius.circular(10.0),
                    ),
                    child: Padding(
                        padding: EdgeInsets.only(left: 15, right: 15, top: 5),
                        child: TextFormField(
                            decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 3, color: Colors.grey), //<-- SEE HERE
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          labelText: 'Enter Username',
                        ))))),
            Padding(
                padding: EdgeInsets.all(10),
                child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: new BorderRadius.circular(10.0),
                    ),
                    child: Padding(
                        padding: EdgeInsets.only(left: 15, right: 15, top: 5),
                        child: TextFormField(
                            decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 3, color: Colors.grey), //<-- SEE HERE
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          labelText: 'Enter Password',
                        )))))
          ],
        ),
        bottomNavigationBar: SafeArea(
          child: BottomAppBar(
            elevation: 0,
            child: Column(
              children: [
                Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      height: 30,
                      width: double.infinity,
                      child: Builder(builder: (context) {
                        return ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ChooseSuit(),
                              ),
                            );
                          },
                          child: Text(
                            'Submit',
                            style: TextStyle(color: Colors.white),
                          ),
                        );
                      }),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
