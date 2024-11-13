import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: const Color.fromARGB(255, 65, 15, 32),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(
                    image: const AssetImage('images/logo.jpg'),
                    width: 100,
                    height: 100,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Goggles',
                        style: TextStyle(
                            color: Colors.pink, fontFamily: 'SourGummy'),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  const Row(
                    children: [
                      Text(
                        'App',
                        style: TextStyle(
                            color: Colors.pink, fontFamily: 'SourGummy'),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  Text('Keep Your Vision Clear For Both Future And World')
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Your Nickname',
                      hintStyle: const TextStyle(fontFamily: 'SourGummy'),
                      icon: const Icon(Icons.nature),
                      fillColor: Colors.blue.shade200,
                      filled: true),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Email Adress',
                      hintStyle: const TextStyle(fontFamily: 'SourGummy'),
                      icon: const Icon(Icons.email_rounded),
                      fillColor: Colors.blue.shade200,
                      filled: true),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
