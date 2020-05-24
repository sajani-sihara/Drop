import 'package:flutter/material.dart';

class EligibilityAgeWeight extends StatefulWidget {
  @override
  _EligibilityAgeWeightState createState() => _EligibilityAgeWeightState();
}

class _EligibilityAgeWeightState extends State<EligibilityAgeWeight> {
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
                  top: MediaQuery.of(context).size.height * 0.10,
                  left: MediaQuery.of(context).size.width * 0.20,
                  child: Container(
                    height: 200,
                    width: 250,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/weight.webp"),
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
                      "Age and Weight Requirements",
                      style: TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Futura",
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Container(
                    margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.43),
                    child: Text(
                      """Males:
                      
- Be at least 18 years
- Be at least 5'1"
- Weigh at least 130 pounds


Females:

- Be at least 18 years
- Be at least 5'5"
- Weigh at least 150 pounds


Please note higher weight requirements may apply in certaine cases. Check with your donor center to confirm.
                      """,
                      style: TextStyle(
                        fontSize: 17.0,
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
