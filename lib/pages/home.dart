import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:whereismyhealth/pages/covid_probability_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'covid_data_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String location = "Boston";
  String whenAndWhereToWhereAMask =
      "➤ In all indoor public settings, venues, gatherings, and any businesses that interact with the public in the City of Boston.\n\n➤ Indoors on the premises of a business, or place of assembly or other place that is open to members of the public, including but not limited to retail establishments, restaurants, bars, performance venues, gyms and fitness centers, social clubs, event spaces, function rooms, ballrooms or ballhalls (including private invitation-only events and functions) and municipal buildings. \n\n➤ Restaurant, indoor bar and dance venue customers may only remove face coverings when actively eating or drinking. Patrons standing or ordering at the bar must be masked. Guests must be masked on indoor dance floors.\n\n➤ City of Boston public buildings will remain under a mask wearing requirement (including libraries, youth centers etc).\n\n➤ Boston Public Schools buildings, school buses and other means of school transportation.\n\n➤ On planes, trains, buses, ferries, taxis and ride-shares, and all other forms of public transport.\n\n➤ In transportation hubs like airports, bus terminals, train stations, marinas, seaports or other ports, MBTA stations, or any other area that provides transportation.\n\n➤ Any shelters and cooling centers.";
  String infoSource = "www.boston.gov";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20.0),
              width: double.infinity,
              color: Theme.of(context).primaryColor,
              child: Center(
                child: Column(
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage(
                                "assets/images/photo.jpg",
                              ),
                              fit: BoxFit.fill)),
                    ),
                    Text(
                      "Rose Morgan",
                      style: TextStyle(color: Colors.white, fontSize: 22),
                    ),
                    Text(
                      "rosem@gmail.com",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    )
                  ],
                ),
              ),
            ),
            ListTile(title: Text("Profile"), leading: Icon(Icons.person)),
            ListTile(title: Text("Settings"), leading: Icon(Icons.settings)),
            ListTile(title: Text("Log out"), leading: Icon(Icons.arrow_back)),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("Where is my health?"),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/weather_background.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
                child: Text(
                  "Your current Location is: $location",
                  style: GoogleFonts.getFont('Montserrat').copyWith(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: double.infinity,
                  ),
                  RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)),
                    color: Colors.pink[400].withOpacity(0.9),
                    padding: EdgeInsets.all(16),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CovidDataPage()));
                    },
                    child: Text(
                      "Check COVID-19 Stadistics",
                      style: GoogleFonts.getFont('Ubuntu').copyWith(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    width: double.infinity,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                      color: Colors.pink[400].withOpacity(0.90),
                      padding: EdgeInsets.all(16),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CovidProbabilityPage()));
                      },
                      child: Text(
                        "Calculate my COVID-19 Risk Score",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.getFont('Ubuntu').copyWith(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin:
                        EdgeInsets.symmetric(horizontal: 15.0, vertical: 30.0),
                    padding:
                        EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
                    decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor.withOpacity(0.9),
                        borderRadius: BorderRadius.circular(15.0)),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "WHEN AND WHERE TO WEAR A MASK:",
                            textAlign: TextAlign.left,
                            style: GoogleFonts.getFont('Ubuntu').copyWith(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          whenAndWhereToWhereAMask,
                          style: GoogleFonts.getFont('Ubuntu').copyWith(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            "From $infoSource",
                            style: GoogleFonts.getFont('Ubuntu').copyWith(
                              color: Colors.white,
                              fontSize: 16,
                            ),
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
      ),
    );
  }
}
