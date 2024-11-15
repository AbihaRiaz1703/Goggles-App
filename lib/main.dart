import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:second_project/nain.dart';

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
    return GetMaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: const Color.fromARGB(255, 65, 15, 32),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 70,
              ),
              const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image(
                      image: AssetImage('images/logo.jpg'),
                      width: 100,
                      height: 100,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Goggles',
                          style: TextStyle(
                            color: Colors.pink,
                            fontFamily: 'SourGummy',
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'App',
                          style: TextStyle(
                            color: Colors.pink,
                            fontFamily: 'SourGummy',
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ]),
              const SizedBox(
                height: 20,
              ),
              const Center(
                child: Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.pink,
                    fontFamily: 'SourGummy',
                    fontSize: 46,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Email Address',
                    hintStyle: const TextStyle(fontFamily: 'SourGummy'),
                    icon: const Icon(Icons.email_rounded),
                    fillColor: Colors.blue.shade200,
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.black),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.black)),
                    enabled: true,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Password',
                      hintStyle: const TextStyle(fontFamily: 'SourGummy'),
                      icon: const Icon(Icons.nature),
                      fillColor: Colors.blue.shade200,
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Colors.black))),
                  enabled: true,
                ),
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(const Profile());
                  },
                  child: const Text('Login'),
                ),
              ),
              const Row(
                children: [
                  Center(
                    child: Text(
                      'have\'nt got an account?',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: 'SourGummy',
                          fontSize: 13,
                          color: Colors.pink,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Center(
                    child: Text(
                      'Sign In?',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: 'SourGummy',
                          fontSize: 13,
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
