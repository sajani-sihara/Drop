import 'package:flutter/material.dart';

class TellUsYourStory extends StatefulWidget {
  @override
  _TellUsYourStoryState createState() => _TellUsYourStoryState();
}

class _TellUsYourStoryState extends State<TellUsYourStory> {
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
                        image: AssetImage("assets/images/tell_your_story.webp"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(100),
                        bottomLeft: Radius.circular(100),
                      )),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.26,
                  left: MediaQuery.of(context).size.width * 0.165,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Container(
                      width: 280,
                      child: RaisedButton(
                        onPressed: () {},
                        color: Colors.redAccent,
                        splashColor: Colors.redAccent,
                        padding: EdgeInsets.symmetric(
                            vertical: 12.0, horizontal: 70.0),
                        child: Text(
                          "Share Your Story",
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
                      icon: Icon(Icons.arrow_back_ios,
                        color: Colors.white,),
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                ),
                Container(
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.35),
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "Let your experiences help others become involved with blood donations with Drop. We would love to hear your story.",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 17.0,
                      fontFamily: "Futura",
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.45),
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                    readOnly: true,
                    onTap: () {},
                    decoration: InputDecoration(
                      hoverColor: Color.fromRGBO(255, 132, 124, 1),
                      hintText: "Write to us",
                      hintStyle: TextStyle(
                        fontSize: 18.0,
                        fontFamily: "Futura",
                        color: Colors.black,
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            style: BorderStyle.solid, color: Colors.black,width: 2.0),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            style: BorderStyle.solid, color: Colors.black,width: 2.0),
                      ),
                      prefixIcon: Icon(
                        Icons.perm_identity,
                        color: Colors.black,
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