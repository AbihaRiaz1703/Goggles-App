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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Logo and Text
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'images/logo.jpg',
                      width: 100,
                      height: 100,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Goggles',
                      style: TextStyle(
                        color: Colors.pink,
                        fontSize: 28,
                        fontFamily: 'SourGummy',
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      'App',
                      style: TextStyle(
                        color: Colors.pink,
                        fontSize: 22,
                        fontFamily: 'SourGummy',
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'Keep Your Vision Clear For Both Future And World',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'SourGummy',
                      ),
                    ),
                  ],
                ),
              ),

              // Input Fields
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: [
                    // Nickname Field
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Your Nickname',
                        hintStyle: const TextStyle(fontFamily: 'SourGummy'),
                        icon: const Icon(Icons.nature, color: Colors.pink),
                        fillColor: Colors.blue.shade200,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),

                    // Email Field
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Email Address',
                        hintStyle: const TextStyle(fontFamily: 'SourGummy'),
                        icon:
                            const Icon(Icons.email_rounded, color: Colors.pink),
                        fillColor: Colors.blue.shade200,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
