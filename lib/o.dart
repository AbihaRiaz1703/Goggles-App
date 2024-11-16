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
      backgroundColor: Color.fromARGB(255, 240, 230, 233),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 167, 77, 107),
        title: Text('Name For Use'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Text(
              'Write Your Name Here',
              style: TextStyle(fontSize: 30, color: Colors.blue),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              keyboardType: TextInputType.name,
              cursorColor: Colors.black,
              decoration: InputDecoration(
                  labelText: 'Name',
                  labelStyle: TextStyle(color: Colors.pink),
                  hintText: 'Real Name',
                  hintStyle: TextStyle(
                    color: const Color.fromARGB(255, 108, 184, 247),
                  ),
                  icon: Icon(Icons.sailing)),
            ),
            TextFormField(
              keyboardType: TextInputType.name,
              cursorColor: Colors.black,
              decoration: InputDecoration(
                  hintText: 'Nick Name',
                  hintStyle: TextStyle(
                    fontFamily: 'SourGummy',
                    color: const Color.fromARGB(255, 108, 184, 247),
                  ),
                  icon: Icon(Icons.sailing)),
            ),
          ],
        ),
      ),
    );
  }
}
