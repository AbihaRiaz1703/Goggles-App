import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Your Chats',
          style: TextStyle(color: Colors.blue),
        ),
        backgroundColor: Colors.pink,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('images/pp3.jfif'),
              ),
              title: Text('Abiha Riaz'),
              subtitle: Text('hello world!'),
              trailing: Text('2:34 PM'),
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 30,
                itemBuilder: (context, Index) {
                  return Text('It\'s Me');
                }),
          ),
        ],
      ),
    );
  }
}
