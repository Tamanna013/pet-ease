import 'package:flutter/material.dart';

class Petessentials extends StatelessWidget {
  const Petessentials({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pet Essentials'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: (){},
            child: Container(
              child: Text("Open "),
            ),
          )
        ],
      ),
    );
  }
}
