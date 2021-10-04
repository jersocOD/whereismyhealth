import 'dart:io';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class CovidProbabilityPage extends StatefulWidget {
  @override
  _CovidProbabilityPageState createState() => _CovidProbabilityPageState();
}

class _CovidProbabilityPageState extends State<CovidProbabilityPage> {
  @override
  void initState() {
    super.initState();
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("COVID-19 Risk Score Calculator"),
      ),
      body: WebView(
        initialUrl: "https://19andme.covid19.mathematica.org",
        gestureNavigationEnabled: true,
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
