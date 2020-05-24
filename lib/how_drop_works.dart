import 'package:flutter/material.dart';

import 'data.dart';

class HowDropWorks extends StatefulWidget {
  @override
  _HowDropWorksState createState() => _HowDropWorksState();
}

class _HowDropWorksState extends State<HowDropWorks> {
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
                        image: AssetImage("assets/images/about_drop.webp"),
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
                          "About Drop",
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
                      top: MediaQuery.of(context).size.height * 0.35),
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "Drop allows hospitals to send out alerts to donors near them requesting for blood for their patients in need. There are three types of alerts depending on the emergency level:",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 16.0,
                      fontFamily: "Futura",
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.46),
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.32,
                    child: ListView.builder(
                      itemCount: aboutDrop_images.length,
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.only(left: 35, bottom: 60),
                          child: SizedBox(
                            width: 200,
                              child: Stack(
                                fit: StackFit.expand,
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(top: 45),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.white,
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
                                        aboutDrop_images[index],
                                        width: 60,
                                        height: 90,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(15),
                                        child: Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              aboutDrop_titles[index],
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: "Futura",
                                                color: Colors.black,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 20,
                                            ),
                                            Text(
                                              aboutDrop_subtitles[index],
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontSize: 15,
                                                fontFamily: "Futura",
                                                color:Colors.black,
                                              ),
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
                      },
                    ),
                  ),
                ),










                Container(
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.73),
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    """



Here is how Drop works: 

1.	When you receive an alert, click on View More to read more information about the donation such as the name of the hospital and within what time you need to be there by. 

2.	If you are in a position to accept it, click on Accept Request.  Otherwise, click on Deny Request.

3.	When you accept the request, you will be asked to enter your mobile number.

4.	We will then send a 6 digit pin to your mobile number which you have to enter in the respective page.

5.	In doing so, the hospital now has your mobile number and can contact you easily.

6.	You will now have to get to the hospital within whatever time duration you are given by the alert.

7.	Once you get to the hospital, you will be given instructions to complete the donation process.



                    """,
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 16.0,
                      fontFamily: "Futura",
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
