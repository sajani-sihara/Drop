import 'package:flutter/material.dart';

class EligibilitySTD extends StatefulWidget {
  @override
  _EligibilitySTDState createState() => _EligibilitySTDState();
}

class _EligibilitySTDState extends State<EligibilitySTD> {
  @override
  Widget build(BuildContext context) {
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
                  height: 200,
                  decoration: BoxDecoration(
                      color: Color(0xFF2a2d3f),
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(100),
                        bottomLeft: Radius.circular(100),
                      )),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.13,
                  left: MediaQuery.of(context).size.width * 0.35,
                  child: Container(
                    height: 170,
                    width: 120,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/hiv.webp"),
                            fit: BoxFit.cover)),
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
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Container(
                    margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.37),
                    child: Text(
                      "Sexually Transmitted Diseases",
                      style: TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Futura",
                      ),
                    ),
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
