import 'package:flutter/material.dart';

class EligibilityGeneralHealth extends StatefulWidget {
  @override
  _EligibilityGeneralHealthState createState() =>
      _EligibilityGeneralHealthState();
}

class _EligibilityGeneralHealthState extends State<EligibilityGeneralHealth> {
  @override
  Widget build(BuildContext context) {
    Widget myList1() {
      return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          margin: EdgeInsets.only(bottom: 10),
          child: Card(
            child: ExpansionTile(
              title: Text(
                "Cold, Flu",
                style: TextStyle(fontFamily: "Futura", fontSize: 18),
                textAlign: TextAlign.left,
              ),
              children: <Widget>[
                _listTileText(
                    """Wait if you have a fever or a productive cough (bringing up phlegm).
                    
Wait if you do not feel well on the day of donation.

Wait until you have completed antibiotic treatment for sinus, throat or lung infection.
                    """),
              ],
            ),
          ),
        ),
      );
    }

    Widget myList2() {
      return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          margin: EdgeInsets.only(bottom: 10),
          child: Card(
            color: Color(0xFFe0e1ea),
            child: ExpansionTile(
              title: Text(
                "Allergy, Stuffy Nose, Itchy Eyes, Dry Cough",
                style: TextStyle(fontSize: 18, fontFamily: "Futura"),
                textAlign: TextAlign.left,
              ),
              children: <Widget>[
                _listTileText(
                    "Acceptable as long as you feel well, have no fever, and have no problems breathing through your mouth."),
              ],
            ),
          ),
        ),
      );
    }

    Widget myList3() {
      return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          margin: EdgeInsets.only(bottom: 10),
          child: Card(
            child: ExpansionTile(
              title: Text(
                "Donation Intervals",
                style: TextStyle(fontFamily: "Futura", fontSize: 18),
                textAlign: TextAlign.left,
              ),
              children: <Widget>[
                _listTileText(
                    """Wait at least 8 weeks between whole blood (standard) donations.
                    
Wait at least 7 days between platelet (pheresis) donations.

Wait at least 16 weeks between Power Red (automated) donations.
"""),
              ],
            ),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: Color(0xFFf2f3f8),
      body: Stack(
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
            left: MediaQuery.of(context).size.width * 0.16,
            child: Container(
              height: 200,
              width: 300,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/exercising.webp"),
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
                "General Health Considerations",
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
              height: MediaQuery.of(context).size.height,
              margin: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.44,
              ),
              child: ListView(
                shrinkWrap: true,
                children: <Widget>[
                  myList1(),
                  myList2(),
                  myList3(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  ListTile _listTileText(String listText) {
    return ListTile(
      title: Text(
        listText,
        textAlign: TextAlign.left,
        style: TextStyle(fontFamily: "Futura", fontSize: 15),
      ),
    );
  }
}
