import 'package:flutter/material.dart';
import 'package:hackathon_2024/add_data.dart';
import 'choose_suit.dart';

class SignUp extends StatefulWidget {
  SignUp();

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    TextEditingController _email_controller = TextEditingController();
    TextEditingController _usrname_controller = TextEditingController();
    TextEditingController _pass_controller = TextEditingController();
    return MaterialApp(
      home: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.4,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xFFF97A18),
                borderRadius: new BorderRadius.circular(20.0),
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Easing Finances, \nBecome Empowered!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFFFFF5F5),
                      fontSize: 24,
                      fontFamily: 'Lexend Deca',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
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
                          controller: _email_controller,
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
                          controller: _usrname_controller,
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
                          controller: _pass_controller,
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
                            backgroundColor: const Color(0xFFF97A18),
                          ),
                          onPressed: () {
                            
                            Map<String, dynamic> data= {'email': _email_controller.text, 'username': _usrname_controller.text, 'password': _pass_controller.text  };
                            _pass_controller.clear();
                            _usrname_controller.clear();
                            _email_controller.clear();
                            addUserData(data);
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
