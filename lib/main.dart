import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Covid 19',
      theme: ThemeData.dark(
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                'assets/covid1.png',
                fit: BoxFit.contain,
                height: 32,
              ),
              Container(
                  padding: const EdgeInsets.all(8.0), child: Text('Covid-19'))
            ],
          ),
          backgroundColor: Colors.grey,
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: WebView(
            javascriptMode: JavascriptMode.unrestricted,
            initialUrl: 'https://www.bing.com/covid/local/india',
          ),
        ),
        backgroundColor: Colors.grey,
    ),
      ),
    );
  }
}

