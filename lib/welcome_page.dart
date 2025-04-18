import 'package:flutter/material.dart';
import 'package:mobile_project/home.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  Color appColor = const Color(0xE30856EC);
  @override
  void initState() {
  super.initState();

  Future.delayed(Duration(seconds: 5), () {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => Home()),
    );
  });
}
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: appColor,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(50), 
              child: Image.asset(
                'assets/logo.png',
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
            Text(
              'ServeU',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold
              ),
            ),
            Text(
              'Welcome to our app',
              style: TextStyle(
                fontSize: 12,
                color: Colors.white,
              ),
            ),
          ],
          
        ),
        
      ),
    );
  }
}
