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
    final List<String> departments = [
      'CSE', 'BBA', 'SWE', 'Pharmacy', 'EEE', 'NFE',
      'CIVIL', 'ENGLISH', 'LAW'
    ];

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 234, 158, 5),
      appBar: AppBar(
        title: const Center(child: Text(
          'DIU Department List',
          style: TextStyle(
            fontWeight:FontWeight.bold,
            fontSize: 32,
            fontFamily: 'DMSans', 
            ),
          
          )),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: departments.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.circular(10),
            ),
            child: ListTile(
              title: Text(
                '${index + 1}. ${departments[index]}',  
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontFamily: 'DMSans'
                ),
              ),
              contentPadding: const EdgeInsets.all(16),
            ),
          );
        },
      ),
    );
  }
}
