import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 65, 15, 32),
      ),
      body: const SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage('images/pp1'),
            ),
            CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage('images/pp2'),
            ),
            CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage('images/pp3'),
            ),
            CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage('images/pp4'),
            ),
            CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage('images/pp5'),
            ),
          ],
        ),
      ),
    );
  }
}
