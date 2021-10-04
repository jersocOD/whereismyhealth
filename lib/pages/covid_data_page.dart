import 'dart:io';

import 'package:webview_flutter/webview_flutter.dart';

import 'package:flutter/material.dart';

class CovidDataPage extends StatefulWidget {
  @override
  _CovidDataPageState createState() => _CovidDataPageState();
}

class _CovidDataPageState extends State<CovidDataPage> {
  @override
  void initState() {
    super.initState();
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "COVID-19 Stadistics at ${today()}",
          style: TextStyle(fontSize: 18),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/images/Total-Doses-Map.png"),
            Image.asset(
                "assets/images/U.S.-COVID-19-Vaccine-Administration-by-Vaccine-Type-Chart.png"),
            Image.asset(
                "assets/images/U.S.-COVID-19-Vaccine-Delivered-by-Vaccine-Type-Chart.png"),
            Image.asset(
                "assets/images/Number-of-People-Fully-Vaccinated-in-the-U.S.-by-COVID-19-Vaccine-Series-Type-Chart.png"),
            Image.asset(
                "assets/images/Number-of-People-with-Booster-Dose-in-the-U.S.-by-COVID-19-Vaccine-Type-Chart.png"),
          ],
        ),
      ),
    );
  }

  String today() {
    final today = DateTime.now().toString();

    return today.substring(0, 10).split("-").reversed.toList().join("-");
  }
}
