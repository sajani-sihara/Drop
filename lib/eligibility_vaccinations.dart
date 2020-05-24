import 'package:flutter/material.dart';

class EligibilityVaccinations extends StatefulWidget {
  @override
  _EligibilityVaccinationsState createState() =>
      _EligibilityVaccinationsState();
}

class _EligibilityVaccinationsState extends State<EligibilityVaccinations> {
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
                "Aspirin",
                style: TextStyle(fontFamily: "Futura", fontSize: 18),
                textAlign: TextAlign.left,
              ),
              children: <Widget>[
                _listTileText(
                    "Aspirin, no waiting period for donating whole blood. However, you must wait 2 full days after taking aspirin or any medication containing aspirin before donating platelets by apheresis. For example, if you take aspirin products on Monday, the soonest you may donate platelets is Thursday."),
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
                "Antibiotics",
                style: TextStyle(fontSize: 18, fontFamily: "Futura"),
                textAlign: TextAlign.left,
              ),
              children: <Widget>[
                _listTileText(
                    """A donor with an acute infection should not donate. The reason for antibiotic use must be evaluated to determine if the donor has a bacterial infection that could be transmissible by blood.

Acceptable after finishing oral antibiotics for an infection (bacterial or viral). May have taken last pill on the date of donation. Antibiotic by injection for an infection acceptable 10 days after last injection. Acceptable if you are taking antibiotics to prevent an infection for the following reasons: acne, chronic prostatitis, peptic ulcer disease, periodontal disease, pre-dental work, rosacea, ulcerative colitis, after a splenectomy, or valvular heart disease. If you have a temperature above 99.5 F, you may not donate."""),
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
                "Birth Control",
                style: TextStyle(fontFamily: "Futura", fontSize: 18),
                textAlign: TextAlign.left,
              ),
              children: <Widget>[
                _listTileText(
                    "Women on oral contraceptives or using other forms of birth control are eligible to donate."),
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
                "Immunization, Vaccination",
                style: TextStyle(fontSize: 18, fontFamily: "Futura"),
                textAlign: TextAlign.left,
              ),
              children: <Widget>[
                _listTileText(
                    "Acceptable if you were vaccinated for influenza, pneumonia, tetanus or meningitis, providing you are symptom-free and fever-free. Includes the Tdap vaccine."),
                Divider(),
                _listTileText(
                    "Acceptable if you received an HPV Vaccine (example, Gardasil)."),
                Divider(),
                _listTileText(
                    "Acceptable if you were vaccinated with SHINGRIX (shingles vaccine) providing you are symptom-free and fever-free. SHINGRIX vaccine is administered in 2 doses (shots). The second shot is administered 2-6 months after the first shot. This distinguishes it from Zostavax, the live shingles vaccine, which is given as a single dose (shot) and requires a 4-week deferral."),
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
                "Insulin (Bovine)",
                style: TextStyle(fontFamily: "Futura", fontSize: 18),
                textAlign: TextAlign.left,
              ),
              children: <Widget>[
                _listTileText(
                    "Donors with diabetes who since 1980, ever used bovine (beef) insulin made from cattle from the United Kingdom are not eligible to donate. This requirement is related to concerns about variant CJD, or 'mad cow' disease."),
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
                "Medications",
                style: TextStyle(fontSize: 18, fontFamily: "Futura"),
                textAlign: TextAlign.left,
              ),
              children: <Widget>[
                _listTileText(
                    "Accutane, Amnesteem, Absorica, Claravis, Myorisan, Sotret or Zenatane (isotretinoin), Proscar (finasteride), and Propecia (finasteride) - wait 1 month from the last dose."),
                Divider(),
                _listTileText(
                    "Avodart or Jalyn (dutasteride) - wait 6 months from the last dose."),
                Divider(),
                _listTileText(
                    "Effient (prasugrel)  and Brilinta (ticagrelor)- no waiting period for donating whole blood. However you must wait 7 days after taking Brilinta (ticagrelor) before donating platelets by apheresis. You must wait 3 days after taking Effient (prasugrel) before donating platelets by apheresis."),
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
              height: 220,
              width: 250,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/vaccines.webp"),
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
                "Medications and Vaccinations",
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
