import 'dart:ui';

import 'package:flutter/material.dart';

class NewPage extends StatelessWidget {
  const NewPage({
    super.key,
    required this.username,
    required this.password
  });

  final String username;
  final String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('New Page'),
          leading: IconButton(
            onPressed: () { Navigator.pop(context); },
            icon: const Icon(Icons.arrow_back),
          ),
          actions: [
            IconButton(
              onPressed: () { Navigator.pop(context); },
              icon: const Icon(Icons.add),
            )
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('username: $username'),
              Text('password: $password'),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () { Navigator.pop(context); },
                child: const Text(
                  'GO BACK',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ));
  }
}
