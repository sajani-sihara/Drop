import 'package:flutter/material.dart';

class EligibilityMedicalConditions extends StatefulWidget {
  @override
  _EligibilityMedicalConditionsState createState() =>
      _EligibilityMedicalConditionsState();
}

class _EligibilityMedicalConditionsState
    extends State<EligibilityMedicalConditions> {
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
                "Allergies",
                style: TextStyle(fontFamily: "Futura", fontSize: 18),
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

    Widget myList2() {
      return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          margin: EdgeInsets.only(bottom: 10),
          child: Card(
            color: Color(0xFFe0e1ea),
            child: ExpansionTile(
              title: Text(
                "Asthma",
                style: TextStyle(fontSize: 18, fontFamily: "Futura"),
                textAlign: TextAlign.left,
              ),
              children: <Widget>[
                _listTileText(
                    "Acceptable as long as you do not have any limitations on daily activities and are not having difficulty breathing at the time of donation and you otherwise feel well. Medications for asthma do not disqualify you from donating."),
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
                "Bleeding Condition",
                style: TextStyle(fontFamily: "Futura", fontSize: 18),
                textAlign: TextAlign.left,
              ),
              children: <Widget>[
                _listTileText("""
If you have a history of bleeding problems, you will be asked additional questions. If your blood does not clot normally, you should not donate since you may have excessive bleeding where the needle was placed. For the same reason, you should not donate if you are taking any "blood thinner" such as:


- Atrixa (fondaparinux)
- Coumadin (warfarin)
- Eliquis (apixaban)
- Fragmin (dalteparin)
- Heparin
- Jantoven (warfarin) 
- Lovenox (enoxaparin)
- Pradaxa (dabigatran)
- Savaysa (edoxaban)
- Warfilone (warfarin)
- Xarelto (rivaroxaban)


If you are on aspirin, it is OK to donate whole blood. However, you must be off of aspirin for at least 2 full days in order to donate platelets by apheresis.  For example, if you take aspirin products on Monday, the soonest you may donate platelets is Thursday. Donors with clotting disorder from Factor V who are not on anticoagulants are eligible to donate; however, all others must be evaluated by the health historian at the collection center.
                    """),
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
                "Pulse (High or Low)",
                style: TextStyle(fontSize: 18, fontFamily: "Futura"),
                textAlign: TextAlign.left,
              ),
              children: <Widget>[
                _listTileText(
                    "Acceptable as long as your pulse is no more than 100 and no less than 50.  A pulse that is regular and less than 50 will require evaluation by the regional American Red Cross physician."),
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
                "Blood Pressure (High or Low)",
                style: TextStyle(fontFamily: "Futura", fontSize: 18),
                textAlign: TextAlign.left,
              ),
              children: <Widget>[
                _listTileText(
                    "High Blood Pressure - Acceptable as long as your blood pressure is below 180 systolic (first number) and below 100 diastolic (second number) at the time of donation. Medications for high blood pressure do not disqualify you from donating."),
                Divider(),
                _listTileText(
                    "Low Blood Pressure - Acceptable as long as you feel well when you come to donate, and your blood pressure is at least 90/50 (systolic/diastolic)."),
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
                "Heart Disease",
                style: TextStyle(fontSize: 18, fontFamily: "Futura"),
                textAlign: TextAlign.left,
              ),
              children: <Widget>[
                _listTileText(
                    """In general, acceptable as long as you have been medically evaluated and treated, have no current (within the last 6 months) heart related symptoms such as chest pain and have no limitations or restrictions on your normal daily activities.

- Wait at least 6 months following an episode of angina.

- Wait at least 6 months following a heart attack.

- Wait at least 6 months after bypass surgery or angioplasty.

- Wait at least 6 months after a change in your heart condition that resulted in a change to your medications

If you have a pacemaker, you may donate as long as your pulse is between 50 and 100 beats per minute and you meet the other heart disease criteria. You should discuss your particular situation with your personal healthcare provider and the health historian at the time of donation.
                    """),

              ],
            ),
          ),
        ),
      );
    }

    Widget myList7() {
      return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          margin: EdgeInsets.only(bottom: 10),
          child: Card(
            child: ExpansionTile(
              title: Text(
                "Cancer",
                style: TextStyle(fontSize: 18, fontFamily: "Futura"),
                textAlign: TextAlign.left,
              ),
              children: <Widget>[
                _listTileText(
                    """
Eligibility depends on the type of cancer and treatment history. If you had leukemia or lymphoma, including Hodgkin’s Disease and other cancers of the blood, you are not eligible to donate. Other types of cancer are acceptable if the cancer has been treated successfully and it has been more than 12 months since treatment was completed and there has been no cancer recurrence in this time. Lower risk in-situ cancers including squamous or basal cell cancers of the skin that have been completely removed do not require a 12-month waiting period.

Precancerous conditions of the uterine cervix do not disqualify you from donation if the abnormality has been treated successfully. You should discuss your particular situation with the health historian at the time of donation.
                    """),
              ],
            ),
          ),
        ),
      );
    }

    Widget myList8() {
      return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          margin: EdgeInsets.only(bottom: 10),
          child: Card(
            color: Color(0xFFe0e1ea),
            child: ExpansionTile(
              title: Text(
                "Chronic Illnesses",
                style: TextStyle(fontSize: 18, fontFamily: "Futura"),
                textAlign: TextAlign.left,
              ),
              children: <Widget>[
                _listTileText(
                    "Most chronic illnesses are acceptable as long as you feel well, the condition is under control, and you meet all other eligibility requirements."),
              ],
            ),
          ),
        ),
      );
    }

    Widget myList9() {
      return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          margin: EdgeInsets.only(bottom: 10),
          child: Card(
            child: ExpansionTile(
              title: Text(
                "Diabetes",
                style: TextStyle(fontSize: 18, fontFamily: "Futura"),
                textAlign: TextAlign.left,
              ),
              children: <Widget>[
                _listTileText(
                    "Diabetics who are well controlled on insulin or oral medications are eligible to donate."),
              ],
            ),
          ),
        ),
      );
    }

    Widget myList10() {
      return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          margin: EdgeInsets.only(bottom: 10),
          child: Card(
            color: Color(0xFFe0e1ea),
            child: ExpansionTile(
              title: Text(
                "Heart Murmur, Heart Valve Disorder",
                style: TextStyle(fontSize: 18, fontFamily: "Futura"),
                textAlign: TextAlign.left,
              ),
              children: <Widget>[
                _listTileText(
                    "Acceptable if you have a heart murmur as long as you have been medically evaluated and treated and have not had symptoms in the last 6 months and have no restrictions on your normal daily activities."),
              ],
            ),
          ),
        ),
      );
    }

    Widget myList11() {
      return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          margin: EdgeInsets.only(bottom: 10),
          child: Card(
            child: ExpansionTile(
              title: Text(
                "Hemoglobin, Hematocrit, Blood Count",
                style: TextStyle(fontSize: 18, fontFamily: "Futura"),
                textAlign: TextAlign.left,
              ),
              children: <Widget>[
                _listTileText(
                    "In order to donate blood, a woman must have a hemoglobin level of at least 12.5 g/dL, and a man must have a hemoglobin level of at least 13.0 g/dL. For all donors, the hemoglobin level can be no greater than 20 g/dL."),
              ],
            ),
          ),
        ),
      );
    }

    Widget myList12() {
      return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          margin: EdgeInsets.only(bottom: 10),
          child: Card(
            color: Color(0xFFe0e1ea),
            child: ExpansionTile(
              title: Text(
                "Hepatitis, Jaundice",
                style: TextStyle(fontSize: 18, fontFamily: "Futura"),
                textAlign: TextAlign.left,
              ),
              children: <Widget>[
                _listTileText(
                    "If you have signs or symptoms of hepatitis (inflammation of the liver) caused by a virus, or unexplained jaundice (yellow discoloration of the skin), you are not eligible to donate blood. If you ever tested positive for hepatitis B or hepatitis C, at any age, you are not eligible to donate, even if you were never sick or jaundiced from the infection."),
              ],
            ),
          ),
        ),
      );
    }

    Widget myList13() {
      return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          margin: EdgeInsets.only(bottom: 10),
          child: Card(
            child: ExpansionTile(
              title: Text(
                "Hepatitis Exposure",
                style: TextStyle(fontSize: 18, fontFamily: "Futura"),
                textAlign: TextAlign.left,
              ),
              children: <Widget>[
                _listTileText(
                    """
If you live with or have had sexual contact with a person who has hepatitis, you must wait 12 months after the last contact.

Persons who have been detained or incarcerated in a facility (juvenile detention, lockup, jail, or prison) for more than 72 consecutive hours (3 days) are deferred for 12 months from the date of last occurrence. This includes work release programs and weekend incarceration. These persons are at higher risk for exposure to infectious diseases.

Wait 12 months after receiving a blood transfusion (unless it was your own "autologous" blood), non-sterile needle stick or exposure to someone else's blood.
                    """),
              ],
            ),
          ),
        ),
      );
    }

    Widget myList14() {
      return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          margin: EdgeInsets.only(bottom: 10),
          child: Card(
            color: Color(0xFFe0e1ea),
            child: ExpansionTile(
              title: Text(
                "Infections",
                style: TextStyle(fontSize: 18, fontFamily: "Futura"),
                textAlign: TextAlign.left,
              ),
              children: <Widget>[
                _listTileText(
                    """
If you have a fever or an active infection, wait until the infection has resolved completely before donating blood.

Wait until finished taking oral antibiotics for an infection (bacterial or viral). Wait 10 days after the last antibiotic injection for an infection.

Those who have had infections with Chagas Disease, Babesiosis or Leishmaniasis are not eligible to donate.
                    """),
              ],
            ),
          ),
        ),
      );
    }

    Widget myList15() {
      return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          margin: EdgeInsets.only(bottom: 10),
          child: Card(
            child: ExpansionTile(
              title: Text(
                "Sickle Cell",
                style: TextStyle(fontSize: 18, fontFamily: "Futura"),
                textAlign: TextAlign.left,
              ),
              children: <Widget>[
                _listTileText(
                    "Acceptable if you have sickle cell trait. Those with sickle cell disease are not eligible to donate."),
              ],
            ),
          ),
        ),
      );
    }

    Widget myList16() {
      return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          margin: EdgeInsets.only(bottom: 10),
          child: Card(
            color: Color(0xFFe0e1ea),
            child: ExpansionTile(
              title: Text(
                "Skin Disease, Rash, Acne",
                style: TextStyle(fontSize: 18, fontFamily: "Futura"),
                textAlign: TextAlign.left,
              ),
              children: <Widget>[
                _listTileText(
                    "Acceptable as long as the skin over the vein to be used to collect blood is not affected. If the skin disease has become infected, wait until the infection has cleared before donating. Taking antibiotics to control acne does not disqualify you from donating."),
              ],
            ),
          ),
        ),
      );
    }

    Widget myList17() {
      return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          margin: EdgeInsets.only(bottom: 10),
          child: Card(
            child: ExpansionTile(
              title: Text(
                "Tuberculosis",
                style: TextStyle(fontSize: 18, fontFamily: "Futura"),
                textAlign: TextAlign.left,
              ),
              children: <Widget>[
                _listTileText(
                    "If you have active tuberculosis or are being treated for active tuberculosis you should not donate. Acceptable if you have a positive skin test or blood test, but no active tuberculosis and are NOT taking antibiotics. If you are receiving antibiotics for a positive TB skin test or blood test only or if you are being treated for a tuberculosis infection, wait until treatment is successfully completed before donating."),
              ],
            ),
          ),
        ),
      );
    }
    return Scaffold(
      backgroundColor: Color(0xFFf2f3f8),
      body:
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
            left: MediaQuery.of(context).size.width * 0.16,
            child: Container(
              height: 200,
              width: 300,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image:
                      AssetImage("assets/images/blood_pressure.webp"),
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
                "Medical Conditions and Diseases",
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
              height: 3000,
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.44,
                  bottom: 10),
              child: ListView(
                shrinkWrap: true,
                children: <Widget>[
                  myList1(),
                  myList2(),
                  myList3(),
                  myList4(),
                  myList5(),
                  myList6(),
                  myList7(),
                  myList8(),
                  myList9(),
                  myList10(),
                  myList11(),
                  myList12(),
                  myList13(),
                  myList14(),
                  myList15(),
                  myList16(),
                  myList17(),
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
