import 'package:flutter/material.dart';

class Page4 extends StatelessWidget {
  const Page4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: ClipRRect(
          child: Container(
            color: Colors.deepPurple[400],
          ),
        ),
      ),
    );
  }
}
