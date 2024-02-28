import 'package:flutter/material.dart';

class QuestionsScreen extends StatefulWidget {
  QuestionsScreen();

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  final List<TextEditingController> _controllers =
      List.generate(3, (index) => TextEditingController());
  List _questions = ["When are you available?", "Are you willing to work at home?", "Which jobs are you least willing to do?"];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            child: Center(
              child: ListView.builder(
                itemCount: _controllers.length,
                itemBuilder: (context, index) {
                  return Center(
                    child: Container(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                              
                              maxLines: 15,
                              minLines: 10,
                              
                              controller: _controllers[index],
                              decoration: InputDecoration(
                                floatingLabelStyle: TextStyle(
                                  fontSize: 26,
                                ),
                                floatingLabelAlignment:
                                    FloatingLabelAlignment.center,
                                floatingLabelBehavior: FloatingLabelBehavior.always,
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 3, color: Colors.grey), //<-- SEE HERE
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                labelText: '${_questions[index]}',
                              ),
                            ),
                          ),
                          Container(
                                height: MediaQuery.of(context).size.height * 0.05,
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controllers.forEach((controller) => controller.dispose());
    super.dispose();
  }
}
