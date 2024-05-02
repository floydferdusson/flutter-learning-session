import 'package:flutter/material.dart';
import 'package:flutter_application_1/buttondesigns.dart';
import 'package:flutter_application_1/page2.dart';
import 'package:flutter_application_1/textfielddesigns.dart';

import 'newpage.dart';

class SampleTextField extends StatelessWidget {
  SampleTextField({super.key});
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('My appbar'),
        ),
        body: Container(
          margin: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: usernameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter username',
                  labelText: 'USERNAME',
                ),
                onChanged: (value) { /* TODO */ },
              ),
              const SizedBox(height: 10),
              TextField(
                controller: passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter password',
                  labelText: 'PASSWORD',
                ),
                onChanged: (value) { /* TODO */ },
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => NewPage(
                        username: usernameController.text,
                        password: passwordController.text,
                      ),
                    )
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orangeAccent,
                  minimumSize: const Size.fromHeight(50),
                ),
                child: const Text(
                    'LOGIN',
                    style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 20),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => const ButtonDesigns(),
                    ),
                  );
                },
                child: const Text('Forgot password?'),
              ),
            ],
          ),
        )
    );
  }
}
