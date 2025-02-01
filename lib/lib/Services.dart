import 'package:flutter/material.dart';

class Services extends StatefulWidget {
  const Services({super.key});

  @override
  State<Services> createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  String dropdownValue = 'Vet';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Services',
          style: TextStyle(
            fontWeight: FontWeight.w600,
          ),
        ),
        backgroundColor: Colors.blueGrey,
      ),
      body: Container(
        padding: EdgeInsets.all(50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text('Select your Area'),
            SizedBox(height: 20),
            DropdownButton<String>(
              value: 'Mumbai',
              items: const [
                DropdownMenuItem(child: Text('Mumbai'), value: 'Mumbai'),
                DropdownMenuItem(child: Text('Bangalore'), value: 'Bangalore'),
                DropdownMenuItem(child: Text('Jaipur'), value: 'Jaipur'),
                DropdownMenuItem(child: Text('Pune'), value: 'Pune'),
              ],
              onChanged: (value) {
                if (value != null) {
                  setState(() {
                    dropdownValue = value;
                  });
                }
              },
            ),
            const SizedBox(height: 20),
            ..._getContainersForSelection(dropdownValue, context), // Pass context here
          ],
        ),
      ),
    );
  }
}

class WebViewScreen extends StatelessWidget {
  final String url;

  const WebViewScreen({Key? key, required this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Web View'),
      ),
    );
  }
}

List<Widget> _getContainersForSelection(String dropdownValue, BuildContext context) {
  switch (dropdownValue) {
    case 'Mumbai':
      return [
        _buildTappableContainer('Pawfect Life', 'https://www.facebook.com/pawfectlife/', context),
        _buildTappableContainer('Snouters',
            'https://snouters.com/city/pet-boarding-mumbai/?utm_source=google&utm_medium=gmb', context),
        _buildTappableContainer('Furends Pet Studio', 'https://www.furendspetstudio.com/', context),
      ];
    default:
      return [];
  }
}

Widget _buildTappableContainer(String title, String url, BuildContext context) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => WebViewScreen(url: url),
        ),
      );
    },
    child: Container(
      color: Colors.blueGrey,
      height: 50, // Increased height for better tap area
      child: Center(child: Text(title)),
    ),
  );
}
