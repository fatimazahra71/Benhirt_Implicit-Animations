import 'package:flutter/material.dart';

// This code is about the fade-in effect

const owl_url = 'https://raw.githubusercontent.com/flutter/website/master/src/images/owl.jpg';

class FadeInDemo extends StatefulWidget {
  _FadeInDemoState createState() => _FadeInDemoState();
}

class _FadeInDemoState extends State<FadeInDemo> {
  double opacity = 0.0;
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Image.network(owl_url),
      MaterialButton(
          child: Text(
            'Show details',
            style: TextStyle(color: Colors.blue),
          ),
          onPressed: () => setState(() {
                         opacity = 1;
                       }),
                     ),
      AnimatedOpacity(
        duration: Duration(seconds: 3),
        opacity: opacity,
        child: Column(
          children: <Widget>[
            Text('Type: Owl'),
            Text('Age: 39'),
            Text('Employment: None'),
          ],
        ),
      )
    ]);
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: FadeInDemo(),
        ),
      ),
    );
  }
}

Future<void> main() async {
  runApp(
    MyApp(),
  );
}
