import 'package:flutter/material.dart';

class History extends StatefulWidget {
  @override
  _HistoryState createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HistoryTopPart(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Most Recent Donations",
                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Futura",
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 20, bottom: 20),
            child: Column(
              children: [
                _buildRecordItem("assets/images/eligibility.webp",
                    "Blood Bank, Negombo", "12.04.2010"),
                _buildRecordItem(
                    "assets/images/capture.webp", "NBC, Colombo", "12.04.2010"),
                _buildRecordItem("assets/images/after_care.webp",
                    "NBTS, Narahenpita", "12.04.2010"),
                _buildRecordItem("assets/images/about_donating.webp",
                    "NHSL Blood Bank, Colombo", "12.04.2010"),
                _buildRecordItem("assets/images/eligibility.webp",
                    "Blood Bank, Negombo", "12.04.2010"),
                _buildRecordItem(
                    "assets/images/capture.webp", "NBC, Colombo", "12.04.2010"),
                _buildRecordItem("assets/images/after_care.webp",
                    "NBTS, Narahenpita", "12.04.2010"),
                _buildRecordItem("assets/images/eligibility.webp",
                    "Blood Bank, Negombo", "12.04.2010"),
                _buildRecordItem("assets/images/after_care.webp",
                    "NBTS, Narahenpita", "12.04.2010"),
                _buildRecordItem("assets/images/about_donating.webp",
                    "NHSL Blood Bank, Colombo", "12.04.2010"),
                _buildRecordItem(
                    "assets/images/capture.webp", "NBC, Colombo", "12.04.2010"),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRecordItem(
      String imagePath, String hospitalName, String donationDate) {
    return Padding(
      padding: EdgeInsets.only(left: 5, right: 10, top: 20),
      child: InkWell(
        onTap: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              child: Row(
                children: [
                  Hero(
                    tag: imagePath,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: new BorderRadius.circular(100.0),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black12,
                              blurRadius: 10,
                              offset: Offset(0, 10)),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: new BorderRadius.circular(100.0),
                        child: Image(
                            image: AssetImage(imagePath),
                            fit: BoxFit.cover,
                            height: 75,
                            width: 75),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          hospitalName,
                          style: TextStyle(
                            fontFamily: "Futura",
                            fontSize: 19,
                          ),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          donationDate,
                          style: TextStyle(
                            fontFamily: "Futura",
                            fontSize: 15,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HistoryTopPart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 270.0,
      child: Stack(
        children: <Widget>[
          ClipPath(
            clipper: Mclipper(),
            child: Container(
              height: 200.0,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.black12,
                      offset: Offset(0.0, 10.0),
                      blurRadius: 10.0)
                ],
              ),
              child: Stack(
                children: <Widget>[
                  Image.asset(
                    "assets/images/about_donating.webp",
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: double.infinity,
                  ),
                  Container(
                    height: double.infinity,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          const Color(0x00000000),
                          const Color(0xD9333333),
                        ],
                        stops: [0.0, 0.9],
                        begin: FractionalOffset(0, 0),
                        end: FractionalOffset(0, 1),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 95),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Your Donation History",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 45.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Futura",
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 200.0,
            right: -20,
            child: FractionalTranslation(
              translation: Offset(0, -0.5),
              child: Row(
                children: <Widget>[
                  RaisedButton(
                    onPressed: () {},
                    padding: EdgeInsets.all(9),
                    color: Colors.white,
                    splashColor: Colors.white,
                    shape: CircleBorder(
                      side: BorderSide.none,
                    ),
                    child: Icon(
                      Icons.history,
                      color: Colors.redAccent,
                      size: 30,
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: RaisedButton(
                      onPressed: () {},
                      color: Colors.redAccent,
                      splashColor: Colors.redAccent,
                      padding: EdgeInsets.symmetric(
                          vertical: 15.0, horizontal: 75.0),
                      child: Text(
                        "Donation Records",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Futura",
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Mclipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(0.0, size.height - 100.0);

    var controlpoint = Offset(35.0, size.height);
    var endpoint = Offset(size.width / 2, size.height);

    path.quadraticBezierTo(
        controlpoint.dx, controlpoint.dy, endpoint.dx, endpoint.dy);

    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0.0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
