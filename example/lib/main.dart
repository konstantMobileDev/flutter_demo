import 'package:flutter/material.dart';
import 'package:flutter_demo/amap_windows_webview.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AMapWindowsWebView(apiKey: '30e0e9ea99ad4246a27af894f0fb6d51'),
    );
  }
}
