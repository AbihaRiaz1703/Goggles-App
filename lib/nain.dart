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
        title: const Text(
          'Profile Picture',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.pink),
        ),
      ),
      body: const SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Divider(
            //   color: Colors.black,
            //   thickness: 1,
            // ),
            // VerticalDivider(
            //   color: Colors.black,
            //   thickness: 1,
            // ),
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('images/pp3.jfif'),
            ),
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('images/pp4.jfif'),
            ),
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('images/pp5.jfif'),
            ),
            Row(
              children: [Text('Select to pick your AVATAR')],
            )
          ],
        ),
      ),
    );
  }
}
