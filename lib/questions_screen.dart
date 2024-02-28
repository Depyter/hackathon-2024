import 'package:flutter/material.dart';
import 'package:hackathon_2024/interests.dart';

class QuestionsScreen extends StatefulWidget {
  QuestionsScreen();

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  final List<TextEditingController> _controllers =
      List.generate(3, (index) => TextEditingController());
  List _questions = [
    "When are you available?",
    "Are you willing to work at home?",
    "Which jobs are you least willing to do?"
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        //backgroundColor: const Color(0xFFDBDBDB),
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.white, //change your color here
          ),
          //title: Text('Title'),
          backgroundColor: const Color(0xFFF97A18),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
          child: Center(
            child: ListView.builder(
              itemCount: _controllers.length,
              itemBuilder: (context, index) {
                return Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Text(
                              '${_questions[index]}',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontFamily: 'Lexend Deca',
                                fontWeight: FontWeight.w700,
                                height: 0,
                                letterSpacing: 1.3,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                              maxLines: 15,
                              minLines: 10,
                              controller: _controllers[index],
                              decoration: InputDecoration(
                                fillColor: Colors.white,
                                filled: true,
                                floatingLabelStyle: TextStyle(
                                  fontSize: 26,
                                ),
                                floatingLabelAlignment:
                                    FloatingLabelAlignment.center,
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.always,
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 0,
                                      color: Colors.white), //<-- SEE HERE
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                //labelText: '${_questions[index]}',
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.05,
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
            shadowColor: Color.fromARGB(31, 215, 215, 215),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFF97A18),
              ),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => InterestsPage(),
                  ),
                );
              },
              child: Text(
                'Submit',
                style: TextStyle(color: Colors.white),
              ),
            )),
      ),
    );
  }

  @override
  void dispose() {
    _controllers.forEach((controller) => controller.dispose());
    super.dispose();
  }
}
