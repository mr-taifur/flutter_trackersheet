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

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _toggled = false;

  void _changeContainer() {
    setState(() {
      _toggled = !_toggled;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 205, 184, 141),
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Center(
          child: Text(
            'Animated Container',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              fontFamily: 'DMSans',
              color: Color.fromARGB(255, 43, 80, 155),
            ),
          ),
        ),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(seconds: 1),
          width: _toggled ? 200 : 120,
          height: _toggled ? 120 : 200,
          decoration: BoxDecoration(
            color: _toggled ? Colors.deepOrange : Colors.indigo,
            borderRadius: BorderRadius.circular(_toggled ? 20 : 100),
            boxShadow: [
              BoxShadow(
                blurRadius: 10,
                offset: const Offset(4, 6),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blueAccent,
        onPressed: _changeContainer,
        child: const Icon(Icons.change_circle),
      ),
    );
  }
}
