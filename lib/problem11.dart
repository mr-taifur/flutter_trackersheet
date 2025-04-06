import 'package:flutter/material.dart';

void main() {
  runApp(const TrackerSheet());
}

class TrackerSheet extends StatelessWidget {
  const TrackerSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 205, 184, 141),
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Image From  Assets',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 43, 80, 155),
              fontFamily: 'DMSans',
            ),
          ),
        ),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Image.asset(
          'assets/images/home.jpg',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
