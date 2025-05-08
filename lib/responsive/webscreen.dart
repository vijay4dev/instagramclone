import 'package:flutter/material.dart';

class Webscreen extends StatelessWidget {
  const Webscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Instagram Clone'),
        backgroundColor: Colors.black,
      ),
      body: const Center(
        child: Text(
          'Web Screen Layout',
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
      ),
    );
  }
}