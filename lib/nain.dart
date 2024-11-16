import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  List<String> _images = [
    'images/pp3.jfif',
    'images/pp4.jfif',
    'images/pp5.jfif'
  ];

  int selectIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 65, 15, 32),
        title: Text(
          'Profile Picture',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.pink),
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (int i = 0; i < _images.length; i++)
              InkWell(
                onTap: () {
                  setState(() {
                    selectIndex = i;
                  });
                },
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      // color: Colors.amber,
                      shape: BoxShape.circle,
                      border: i == selectIndex
                          ? Border.all(color: Colors.green, width: 5)
                          : Border.all(color: Colors.transparent),
                      image: DecorationImage(
                          image: AssetImage('${_images[i]}'),
                          fit: BoxFit.cover)),
                ),
              ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text('Select to pick your AVATAR')],
            )
          ],
        ),
      ),
    );
  }
}
