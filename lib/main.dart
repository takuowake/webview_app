import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart' as webview_flutter;
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('WebView Demo'),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 300,
              child: webview_flutter.WebViewWidget(
                controller: webview_flutter.WebViewController()
                    ..loadRequest(Uri.parse('https://flutter.dev')),
              ),
            ),
            SizedBox(
              height: 300,
              child: InAppWebView(
                initialUrlRequest: URLRequest(
                  url: Uri.parse('https://openai.com'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
