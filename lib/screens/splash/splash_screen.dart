import 'package:flutter/material.dart';
import 'package:portfolio_website/constants.dart';
import 'package:portfolio_website/screens/home/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Yash Gupta",
              style: Theme.of(context).textTheme.subtitle1,
            ),
            SizedBox(height: defaultPadding),
            TweenAnimationBuilder(
              curve: Curves.fastOutSlowIn,
              tween: Tween<double>(begin: 0, end: 1),
              duration: Duration(seconds: 2),
              onEnd: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomeScreen(),
                ),
              ),
              builder: (context, double value, child) => Column(
                children: [
                  SizedBox(
                    width: 250,
                    child: LinearProgressIndicator(
                      backgroundColor: darkColor,
                      value: value,
                      color: primaryColor,
                    ),
                  ),
                  SizedBox(height: defaultPadding / 2),
                  Text((value * 100).toInt().toString() + "%"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
