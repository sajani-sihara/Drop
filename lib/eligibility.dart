import 'package:flutter/material.dart';

import 'data.dart';

class Eligibility extends StatefulWidget {
  final eligibilityImages;
  final eligibilityTitle;
  final eligibilitySubtitle;
  final eligibilityPages;

  Eligibility(
      {this.eligibilityImages,
        this.eligibilityTitle,
        this.eligibilitySubtitle,
        this.eligibilityPages});

  @override
  _EligibilityState createState() => _EligibilityState();
}

class _EligibilityState extends State<Eligibility> {
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
                  height: 250,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/eligibility.webp"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(100),
                        bottomLeft: Radius.circular(100),
                      )),
                ),
                Positioned(
                  top: 220,
                  left: MediaQuery.of(context).size.width * 0.15,
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
                          "Eligibility",
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
                  top: 20,
                  child: IconButton(
                      icon: Icon(Icons.arrow_back_ios),
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                ),
                Container(
                  margin: EdgeInsets.only(
                      top: 300),
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "To ensure the safety of both donors and recipients, all volunteer blood donors must be evaluated to determine their eligibility to give blood.",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 16.0,
                      fontFamily: "Futura",
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      top: 370),
                  child: SizedBox(
                    height: 435,
                    child: ListView.builder(
                      itemCount: images.length,
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.only(left: 35, bottom: 60),
                          child: SizedBox(
                            width: 200,
                            child: InkWell(
                              onTap: () {
                                Navigator.of(context).push((MaterialPageRoute(
                                    builder: (context) =>
                                    eligibilityPages[index])));
                              },
                              child: Stack(
                                fit: StackFit.expand,
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(top: 45),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: (index % 2 == 0)
                                            ? Color(0xFF2a2d3f)
                                            : Colors.white,
                                        boxShadow: [
                                          BoxShadow(
                                              color: Colors.black12,
                                              blurRadius: 10,
                                              offset: Offset(0, 10)),
                                        ],
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Image.asset(
                                        eligibilityImages[index],
                                        width: 175,
                                        height: 150,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(15),
                                        child: Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              eligibilityTitle[index],
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: "Futura",
                                                color: (index % 2 == 0)
                                                    ? Colors.white
                                                    : Colors.black,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 20,
                                            ),
                                            Text(
                                              eligibilitySubtitle[index],
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontSize: 15,
                                                fontFamily: "Futura",
                                                color: (index % 2 == 0)
                                                    ? Colors.white
                                                    : Colors.black,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 20,
                                            ),

                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
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
