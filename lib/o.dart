import 'package:flutter/material.dart';

class Name extends StatefulWidget {
  const Name({super.key});

  @override
  State<Name> createState() => _NameState();
}

class _NameState extends State<Name> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 65, 15, 32),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 167, 77, 107),
        title: Text('Name For Use'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Text(
              'Write Your Name Here',
              style: TextStyle(fontSize: 30, color: Colors.blue),
            ),
            TextFormField(
              decoration: InputDecoration(
                  hintText: 'Real Name',
                  hintStyle: TextStyle(
                    fontFamily: '',
                    color: const Color.fromARGB(255, 108, 184, 247),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
