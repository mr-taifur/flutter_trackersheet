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
      backgroundColor:  Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        elevation: 6,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.network(
            'https://upload.wikimedia.org/wikipedia/commons/1/17/Google-flutter-logo.png',
            width: 40,
            height: 40,
          ),
        ),
        title: const Text(
          'AppBar',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            fontFamily: 'DMSans',
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              
            },
          ),
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {
              
            },
          ),
        ],
      ),
      body: const Center(
        child: Text(
          'My Custom AppBar',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            fontFamily: 'DMSans',
          ),
        ),
      ),
    );
  }
}
