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
      home: const HomeWithDrawer(),
    );
  }
}

class HomeWithDrawer extends StatefulWidget {
  const HomeWithDrawer({super.key});

  @override
  State<HomeWithDrawer> createState() => _HomeWithDrawerState();
}

class _HomeWithDrawerState extends State<HomeWithDrawer> {
  bool _isDrawerOpen = false;

  void toggleDrawer() {
    setState(() {
      _isDrawerOpen = !_isDrawerOpen;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Drawer"),
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: toggleDrawer,
        ),
        backgroundColor: Colors.teal,
      ),
      body: Stack(
        children: [
          const Center(
            child: Text(
              'HomePage',
              style: TextStyle(fontSize: 24),
            ),
          ),

          AnimatedPositioned(
            duration: const Duration(milliseconds: 300),
            top: 0,
            bottom: 0,
            left: _isDrawerOpen ? 0 : -250,
            child: Container(
              width: 250,
              color: Colors.teal.shade100,
              padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRvigswFFeqd_2YKXNfNba9xclCc95zfJusCQ&s',
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Taifur Rahman',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Divider(height: 30),
                  ListTile(
                    leading: const Icon(Icons.home),
                    title: const Text('Home'),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: const Icon(Icons.settings),
                    title: const Text('Settings'),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: const Icon(Icons.logout),
                    title: const Text('Logout'),
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ),

          if (_isDrawerOpen)
            Positioned.fill(
              child: GestureDetector(
                onTap: toggleDrawer,
                child: Container(
                  // ignore: deprecated_member_use
                  color: Colors.black.withOpacity(0.3),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
