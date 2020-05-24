import 'package:flutter/material.dart';

import 'after_care.dart';
import 'data.dart';
import 'eligibility.dart';
import 'how_drop_works.dart';
import 'tell_us_your_story.dart';

class AboutDonating extends StatefulWidget {
  @override
  _AboutDonatingState createState() => _AboutDonatingState();
}

class _AboutDonatingState extends State<AboutDonating> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          AboutDonatingBloodTopPart(),
          AboutTheProcess(),
        ],
      ),
    );
  }
}

class AboutDonatingBloodTopPart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 420.0,
      child: Stack(
        children: <Widget>[
          ClipPath(
            clipper: Mclipper(),
            child: Container(
              height: 370.0,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.black12,
                      offset: Offset(0.0, 10.0),
                      blurRadius: 10.0),
                ],
              ),
              child: Stack(
                children: <Widget>[
                  Image.asset(
                    "assets/images/about_donating.webp",
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: double.infinity,
                  ),
                  Container(
                    height: double.infinity,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          const Color(0x00000000),
                          const Color(0xD9333333),
                        ],
                        stops: [0.0, 0.9],
                        begin: FractionalOffset(0, 0),
                        end: FractionalOffset(0, 1),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(top: 120, left: 95),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "SAVE LIVES, GIVE BLOOD",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Futura",
                            ),
                          ),
                          Text(
                            "About Donating Blood",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 45.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Futura",
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 370.0,
            right: -20,
            child: FractionalTranslation(
              translation: Offset(0, -0.5),
              child: Row(
                children: <Widget>[
                  RaisedButton(
                    onPressed: () {},
                    splashColor: Colors.white,
                    padding: EdgeInsets.all(9),
                    color: Colors.white,
                    shape: CircleBorder(
                      side: BorderSide.none,
                    ),
                    child: Icon(
                      Icons.info,
                      color: Colors.redAccent,
                      size: 30,
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: RaisedButton(
                      onPressed: () {},
                      color: Colors.redAccent,
                      splashColor: Colors.redAccent,
                      padding: EdgeInsets.symmetric(
                          vertical: 15.0, horizontal: 70.0),
                      child: Text(
                        "General Information",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Futura",
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Mclipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(0.0, size.height - 100.0);

    var controlpoint = Offset(35.0, size.height);
    var endpoint = Offset(size.width / 2, size.height);

    path.quadraticBezierTo(
        controlpoint.dx, controlpoint.dy, endpoint.dx, endpoint.dy);

    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0.0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}

class AboutTheProcess extends StatefulWidget {
  @override
  _AboutTheProcessState createState() => _AboutTheProcessState();
}

class _AboutTheProcessState extends State<AboutTheProcess> {
  var selectedItem;

  final List<String> images = [
    "assets/images/eligibility.webp",
    "assets/images/after_care.webp",
    "assets/images/about_drop.webp",
    "assets/images/tell_your_story.webp",
    "assets/images/capture.webp",
  ];
  final List<String> titles = [
    "Am I eligible to donate blood?",
    "How do I take care of myself after a donation?",
    "How does Drop work?",
    "Tell us your story",
    "Capture the moment",
  ];
  final List<Widget> pages = [
    Eligibility(
      eligibilityImages: eligibilityImages,
      eligibilityTitle: eligibilityTitle,
      eligibilitySubtitle: eligibilitySubtitle,
    ),
    AfterCare(),
    HowDropWorks(),
    TellUsYourStory(),
    Eligibility(
      eligibilityImages: eligibilityImages,
      eligibilityTitle: eligibilityTitle,
      eligibilitySubtitle: eligibilitySubtitle,
    ),
  ];

  List<Widget> sections() {
    List<Widget> sectionList = new List();
    for (int i = 0; i < 5; i++) {
      final sectionItem = Padding(
        padding: EdgeInsets.symmetric(vertical: 25, horizontal: 12),
        child: Builder(
          builder: (context) =>
              InkWell(
                onTap: () {
                  Navigator.of(context).push((MaterialPageRoute(
                      builder: (context) => pages[i])));},
                child: Container(
                  height: 240,
                  width: 155,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black12, blurRadius: 10, offset: Offset(0, 10)),
                    ],
                  ),
                  child: Column(
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20)),
                        child: Image.asset(
                          images[i],
                          width: double.infinity,
                          height: 150,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 4, left: 8, right: 8),
                        child: Text(
                          titles[i],
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 16, fontFamily: "Futura"),
                        ),
                      )
                    ],
                  ),
                ),
              ),
        ),
      );
      sectionList.add(sectionItem);
    }
    return sectionList;
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 360,
      margin: EdgeInsets.only(top: 20, left: 20),
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Learn more",
                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Futura",
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 15,
                ),
              ],
            ),
          ),
          Container(
            height: 270,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: sections(),
            ),
          ),

        ],
      ),
    );
  }
}
