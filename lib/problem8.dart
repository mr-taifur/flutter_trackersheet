import 'package:flutter/material.dart';

void main() {
  runApp(const TrackerSheet());
}

class TrackerSheet extends StatelessWidget {
  const TrackerSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Navigation Drawer')),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text(
                'Menu',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            ListTile(
              title: const Text('Porche'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CarScreen()),
                );
              },
            ),
            ListTile(
              title: const Text('BMW'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LogosScreen()),
                );
              },
            ),
          ],
        ),
      ),
      body: Container(
        color: Colors.lightBlueAccent,
        child: const Center(child: Text('Welcome to Home Screen', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white))),
      ),
    );
  }
}

class CarScreen extends StatelessWidget {
  const CarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Porshe')),
      ),
      body: Container(
        color: Colors.greenAccent,
        child: const Center(child: Text('You cant afford Porche', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
      ),
    );
  }
}

class LogosScreen extends StatelessWidget {
  const LogosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('BMW')),
      ),
      body: Container(
        color: Colors.orangeAccent,
        child: const Center(child: Text('You Cant afford BMW', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
      ),
    );
  }
}
