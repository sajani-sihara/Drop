import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class AfterCare extends StatefulWidget {
  @override
  _AfterCareState createState() => _AfterCareState();
}

class _AfterCareState extends State<AfterCare> {
  final listData = [
    "Drink extra fluids for the next day or two.",
    "Avoid strenuous physical activity or heavy lifting for the next five hours.",
    "If you feel lightheaded, lie down with your feet up until the feeling passes.",
    "Keep the bandage on your arm and dry for five hours.",
    "If you have bleeding after removing the bandage, put pressure on the site and raise your arm until the bleeding stops.",
    "If bleeding or bruising occurs under the skin, apply a cold pack to the area periodically during the first 24 hours.",
    "If your arm is sore, take a pain reliever such as acetaminophen (Tylenol, others). Avoid taking aspirin or ibuprofen (Advil, Motrin IB, others) for the first 24 to 48 hours after donation.",
  ];

  @override
  Widget build(BuildContext context) {
    final _markDownData =
    listData.map((x) => "- $x\n").reduce((x, y) => "$x$y");
    return Scaffold(
      backgroundColor: Color(0xFFf2f3f8),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: 300.0,
                ),
                Container(
                  height: 250,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/after_care.webp"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(100),
                        bottomLeft: Radius.circular(100),
                      )),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.26,
                  left: MediaQuery.of(context).size.width * 0.2,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Container(
                      width: 250,
                      child: RaisedButton(
                        onPressed: () {},
                        color: Colors.redAccent,
                        splashColor: Colors.redAccent,
                        padding: EdgeInsets.symmetric(
                            vertical: 12.0, horizontal: 70.0),
                        child: Text(
                          "After Care",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Futura",
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.03,
                  child: IconButton(
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                ),
                Container(
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.40),
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: Text(
                          "After donating you sit in an observation area, where you rest and eat a light snack. After 15 minutes, you can leave. After your blood donation:",
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontSize: 16.0,
                            fontFamily: "Futura",
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 40.0,
                      ),
                      MarkdownBody(
                        data: _markDownData,
                        styleSheet: MarkdownStyleSheet(
                          listIndent: 25,
                          blockSpacing: 10,
                          p: TextStyle(
                            fontSize: 16.0,
                            fontFamily: "Futura",
                            color: Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 40.0,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: Text(
                          "Contact the blood donor center or your doctor if you forgot to report any important health information before you donated or if you had any problems or needed medical care after giving blood.",
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontSize: 16.0,
                            fontFamily: "Futura",
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
