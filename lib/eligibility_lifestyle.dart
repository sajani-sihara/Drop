import 'package:flutter/material.dart';

class EligibilityLifestyle extends StatefulWidget {
  @override
  _EligibilityLifestyleState createState() => _EligibilityLifestyleState();
}

class _EligibilityLifestyleState extends State<EligibilityLifestyle> {
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
                "Age",
                style: TextStyle(fontSize: 18, fontFamily: "Futura"),
                textAlign: TextAlign.left,
              ),
              children: <Widget>[
                _listTileText(
                    "You must be at least 18 years old to donate to the general blood supply, or 17 years old with parental/guardian consent, if allowed by state law. There is no upper age limit for blood donation as long as you are well with no restrictions or limitations to your activities."),
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
                "Donor Deferral for Men Who Have Had Sex With Men (MSM)",
                style: TextStyle(fontSize: 18, fontFamily: "Futura"),
                textAlign: TextAlign.left,
              ),
              children: <Widget>[
                _listTileText("""
First-time male donors may be eligible to donate blood if they have not had sex with another man in more than 12 months. This policy change aligns the MSM donor deferral period with those for other activities that may pose a similar risk of transfusion-transmissible infections. All additional blood donation eligibility criteria will apply. 

Donors who were previously deferred under the prior MSM policy will be evaluated for reinstatement. It is important to understand that the donor reinstatement process involves potentially thousands of donors, and it will take time.

Individuals who have been deferred for MSM in the past may initiate donor reinstatement by contacting the Red Cross Donor and Client Support Center at 1-866-236-3276. Individuals with questions about their donation eligibility can contact the Red Cross Donor and Client Support Center at 1-866-236-3276. We appreciate the patience of our valued donors as we continue to diligently work to implement these changes so that more people can give blood for those in need.

For the purposes of blood donation gender is self-identified and self-reported, which is relevant to the transgender community.
                    """),
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
                "Intravenous Drug Use",
                style: TextStyle(fontSize: 18, fontFamily: "Futura"),
                textAlign: TextAlign.left,
              ),
              children: <Widget>[
                _listTileText(
                    "Those who have ever used IV drugs that were not prescribed by a physician are not eligible to donate. This requirement is related to concerns about hepatitis and HIV."),
              ],
            ),
          ),
        ),
      );
    }

    Widget myList4() {
      return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          margin: EdgeInsets.only(bottom: 10),
          child: Card(
            color: Color(0xFFe0e1ea),
            child: ExpansionTile(
              title: Text(
                "Pregnancy, Nursing",
                style: TextStyle(fontSize: 18, fontFamily: "Futura"),
                textAlign: TextAlign.left,
              ),
              children: <Widget>[
                _listTileText(
                    "Persons who are pregnant are not eligible to donate. Wait 6 weeks after giving birth."),
              ],
            ),
          ),
        ),
      );
    }

    Widget myList5() {
      return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          margin: EdgeInsets.only(bottom: 10),
          child: Card(
            child: ExpansionTile(
              title: Text(
                "Tattoo",
                style: TextStyle(fontSize: 18, fontFamily: "Futura"),
                textAlign: TextAlign.left,
              ),
              children: <Widget>[
                _listTileText("""
Wait 12 months after a tattoo if the tattoo was applied in a state that does not regulate tattoo facilities. Currently, the only states that DO NOT regulate tattoo facilities are: District of Columbia, Georgia, Idaho, Maryland, Massachusetts, New Hampshire, New York, Pennsylvania, Utah and Wyoming. This requirement is related to concerns about hepatitis.

A tattoo is acceptable if the tattoo was applied by a state-regulated entity using sterile needles and ink that is not reused. Cosmetic tattoos applied in a licensed establishment in a regulated state using sterile needles and ink that is not reused is acceptable. You should discuss your particular situation with the health historian at the time of donation.
                    """),
              ],
            ),
          ),
        ),
      );
    }

    Widget myList6() {
      return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          margin: EdgeInsets.only(bottom: 10),
          child: Card(
            color: Color(0xFFe0e1ea),
            child: ExpansionTile(
              title: Text(
                "Piercing (ears, body), Electrolysis",
                style: TextStyle(fontSize: 18, fontFamily: "Futura"),
                textAlign: TextAlign.left,
              ),
              children: <Widget>[
                _listTileText("""
Acceptable as long as the instruments used were single-use equipment and disposable (which means both the gun and the earing cassette were disposable). Wait 12 months if a piercing was performed using a reusable gun or any reusable instrument.

Wait 12 months if there is any question whether or not the instruments used were single-use equipment. This requirement is related to concerns about hepatitis.
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
            left: MediaQuery.of(context).size.width * 0.17,
            child: Container(
              height: 200,
              width: 300,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/tattoo.webp"),
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
                "Lifestyle and Life Events",
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
                  myList4(),
                  myList5(),
                  myList6(),
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
