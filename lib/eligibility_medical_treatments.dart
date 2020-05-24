import 'package:flutter/material.dart';

class EligibilityMedicalTreatments extends StatefulWidget {
  @override
  _EligibilityMedicalTreatmentsState createState() => _EligibilityMedicalTreatmentsState();
}

class _EligibilityMedicalTreatmentsState extends State<EligibilityMedicalTreatments> {
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
                  left: MediaQuery.of(context).size.width * 0.2,
                  child: Container(
                    height: 200,
                    width: 250,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/stethescope.webp"),
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
                      "Medical Treatments and Waiting Periods",
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
