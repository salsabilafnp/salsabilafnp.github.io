import 'package:flutter/material.dart';

class PortofolioPage extends StatelessWidget {
  const PortofolioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Welcome to My Portfolio Page',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
