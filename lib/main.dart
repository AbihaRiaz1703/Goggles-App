import 'package:flutter/material.dart';

void main() {
  runApp(const Fluff());
}

class Fluff extends StatefulWidget {
  const Fluff({super.key});

  @override
  State<Fluff> createState() => _FluffState();
}

class _FluffState extends State<Fluff> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.pink.shade100,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Image(
                  image: const AssetImage('images/logo.jpg'),
                  width: 100,
                  height: 100,
                  color: Colors.red.shade100,
                ),
                Column(
                  children: [
                    Text(
                      'Goggles',
                      style: TextStyle(
                          color: Colors.red.shade100, fontFamily: 'SourGummy'),
                    )
                  ],
                ),
                const Column(
                  children: [
                    Text(
                      'App',
                      style:
                          TextStyle(color: Colors.red, fontFamily: 'SourGummy'),
                    )
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: 'Your Nickname',
                    hintStyle: const TextStyle(fontFamily: 'SourGummy'),
                    fillColor: Colors.blue.shade200,
                    filled: true),
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                  hintText: 'Email Adress',
                  hintStyle: const TextStyle(fontFamily: 'SourGummy'),
                  fillColor: Colors.blue.shade200,
                  filled: true),
            ),
          ],
        ),
      ),
    );
  }
}
