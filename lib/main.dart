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
            const Row(
              children: [
                Image(
                  image: AssetImage('images/ioj.jpg'),
                  width: 100,
                  height: 100,
                ),
                Column(
                  children: [
                    Text(
                      'Meditator',
                      style: TextStyle(color: Colors.red),
                    )
                  ],
                ),
                Column(
                  children: [
                    Text(
                      'App',
                      style: TextStyle(color: Colors.red),
                    )
                  ],
                ),
              ],
            ),
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Nickname',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
