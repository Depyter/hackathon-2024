import 'package:flutter/material.dart';

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return InterestPage();
//   }
// }

class InterestsPage extends StatelessWidget {
  const InterestsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white, //change your color here
        ),
        //title: Text('Title'),
        backgroundColor: const Color(0xFFF97A18),
      ),
      backgroundColor: const Color(0xFFF97A18),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
            children: [
              Expanded(
                  child: Padding(
                padding: EdgeInsets.all(5),
                child: Container(
                    alignment: Alignment.topLeft,
                    child: const Text(
                      "Your Interests",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'Lexend Deca',
                        fontWeight: FontWeight.w700,
                        height: 0,
                        letterSpacing: 1.3,
                      ),
                    )),
              )),
              Expanded(
                child: Container(
                  alignment: Alignment.topRight,
                  height: 20,
                  child: const Text(
                    "Edit",
                    style: TextStyle(
                      color: Color(0xFF073B18),
                      fontSize: 13,
                      fontFamily: 'Lexend Deca',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Container(
            height: 170,
            child: _interestsList(),
          ),
          const Text(
            "You may also like",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontFamily: 'Lexend Deca',
              fontWeight: FontWeight.w700,
              height: 0,
              letterSpacing: 1.3,
            ),
          ),
          SizedBox(height: 10),
          const Text(
            "Suggested Services based on your interests",
            style: TextStyle(
              color: Color(0xFF083B18),
              fontSize: 12,
              fontFamily: 'Lexend Deca',
              fontWeight: FontWeight.w300,
              height: 0,
            ),
          ),
          SizedBox(height: 10),
          Expanded(
            child: Container(
              child: _suggestedInterestsList(),
            ),
          ),
        ]),
      ),
    );
  }

  Widget _interestsList() {
    return ListView(
      children: [
        _tile('Create social media content',
            'Social Media Blogger, Social Media Designer', Icons.theaters),
        SizedBox(
          height: 10,
        ),
        _tile('Create social media content',
            'Social Media Blogger, Social Media Designer', Icons.theaters),
        SizedBox(
          height: 10,
        ),
        // _tile('CineArts at the Empire', '85 W Portal Ave', Icons.theaters),
        // SizedBox(
        //   height: 10,
        // ),
      ],
    );
  }

  Widget _suggestedInterestsList() {
    return ListView(
      children: [
        _tile('Marketing strategist',
            'Social Media Blogger, Social Media Designer', Icons.home),
        SizedBox(
          height: 10,
        ),
        _tile('Photo and multi-media editing', 'Photo and multi-media editing',
            Icons.theaters),
        SizedBox(
          height: 10,
        ),
        _tile('eBook Publishing', 'Photo and multi-media editing',
            Icons.theaters),
        SizedBox(
          height: 10,
        ),
        _tile('Online writer and script', 'Photo and multi-media editing',
            Icons.theaters),
        SizedBox(
          height: 10,
        ),
        _tile('Entertainment Hosting', 'Photo and multi-media editing',
            Icons.theaters),
        SizedBox(
          height: 10,
        ),
        _tile('Networking with influencers', 'Photo and multi-media editing',
            Icons.theaters),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }

  Container _tile(String title, String subtitle, IconData icon) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Colors.white,
          ),
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: ListTile(
        title: Text(
          title,
          style: TextStyle(
            color: Colors.black,
            fontSize: 15,
            fontFamily: 'Lexend Deca',
            fontWeight: FontWeight.w500,
            height: 0,
          ),
        ),
        subtitle: Text(
          subtitle,
          style: TextStyle(
            color: Colors.black,
            fontSize: 11,
            fontFamily: 'Lexend Deca',
            fontWeight: FontWeight.w200,
            height: 0,
          ),
        ),
        leading: Icon(
          icon,
          color: Colors.blue[500],
        ),
      ),
    );
  }
}
