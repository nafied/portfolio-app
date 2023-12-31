import 'package:flutter/material.dart';
import 'profile.dart';
import 'portfolio.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Portfolio App'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ProfileSection(),
            PortfolioSection(),
          ],
        ),
      ),
    );
  }
}
