import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('InAppWebView Example'),
        ),
        body: InAppWebView(
          initialUrlRequest: URLRequest(
              url: Uri.parse('https://flutter.dev')
          ),
          onWebViewCreated: (InAppWebViewController controller) {
            // additional setup, if needed
          },
        ),
      ),
    );
  }
}
