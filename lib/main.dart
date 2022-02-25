// @dart=2.9
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/home.dart';
import 'package:slider_button/slider_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Smarter Home',
      theme: ThemeData.dark(),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(
              image: AssetImage('assets/images/png1.png'),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15, right: 0, top: 0, bottom: 0),
              child: Text(
                'Smarter Homes',
                style: TextStyle(
                  fontSize: 70,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            const Text(
              'Pay securely and safely with finance management ',
              style: TextStyle(
                fontSize: 15,
              ),
              textAlign: TextAlign.left,
            ),
            const SizedBox(
              height: 18,
            ),
            SliderButton(
              action: () {
                print('Sided');
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()),
                );
              },
              shimmer: false,
              label: const Text(
                "Slide to Start",
                style: TextStyle(
                  color: Color(0xff4a4a4a),
                  fontWeight: FontWeight.w500,
                  fontSize: 17,
                ),
              ),
              icon: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
