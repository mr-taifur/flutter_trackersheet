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
      home: SettingsScreen(),
    );
  }
}

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool _isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _isDarkMode ? Colors.black : const Color.fromARGB(255, 205, 184, 141),
      appBar: AppBar(
        title: const Center(
          child: Text("Settings"),
        ),
        backgroundColor: _isDarkMode ? Colors.grey[900] : Colors.blueAccent,
        automaticallyImplyLeading: false,
      ),
      body: Stack(
        children: [
          // Dark Mode switch and text in top-right
          Positioned(
            top: 20,
            right: 20,
            child: Row(
              children: [
                Text(
                  "Dark Mode",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: _isDarkMode ? Colors.white : Colors.black,
                  ),
                ),
                const SizedBox(width: 10),
                Switch(
                  value: _isDarkMode,
                  activeColor: Colors.blueAccent,
                  onChanged: (value) {
                    setState(() {
                      _isDarkMode = value;
                    });
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
