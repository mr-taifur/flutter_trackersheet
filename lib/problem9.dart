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
    List<Color> cardColors = [
      Colors.red[100]!, Colors.blue[100]!, Colors.green[100]!, Colors.yellow[100]!, Colors.purple[100]!
    ];

    List<String> descriptions = [
      'Model 2020.',
      'Model 2021.',
      'Model 2022.',
      'Model 2023',
      'Model 2024.'
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Car Lists')),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(8.0),
        itemCount: 5,
        itemBuilder: (context, index) {
          return CustomCard(
            image: 'assets/images/home.jpg',
            title: 'Porche ${index + 1}',
            subtitle: 'CAR ${index + 1}',
            description: descriptions[index],
            color: cardColors[index],
          );
        },
      ),
    );
  }
}

class CustomCard extends StatefulWidget {
  final String image;
  final String title;
  final String subtitle;
  final String description;
  final Color color;

  const CustomCard({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.description,
    required this.color,
  });

  @override
  State<CustomCard> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        margin: const EdgeInsets.symmetric(vertical: 8.0),
        decoration: BoxDecoration(
          color: _isHovered ? Colors.blueGrey[100] : widget.color,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              // ignore: deprecated_member_use
              color: Colors.black.withOpacity(0.1),
              blurRadius: 5,
              spreadRadius: 2,
            ),
          ],
        ),
        child: ListTile(
          contentPadding: const EdgeInsets.all(12.0),
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(widget.image, width: 50, height: 50, fit: BoxFit.cover),
          ),
          title: Text(widget.title, style: const TextStyle(fontWeight: FontWeight.bold)),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(widget.subtitle),
              Text(widget.description, style: const TextStyle(fontSize: 12, color: Colors.grey)),
            ],
          ),
        ),
      ),
    );
  }
}
