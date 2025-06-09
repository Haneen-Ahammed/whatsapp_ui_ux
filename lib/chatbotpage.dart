import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Chatbotscrren extends StatefulWidget {
  const Chatbotscrren({super.key});

  @override
  State<Chatbotscrren> createState() => _ChatbotscrrenState();
}

class _ChatbotscrrenState extends State<Chatbotscrren> {
  TextEditingController msgcontroller = TextEditingController();
  bool isloading = false;
  bool cansent = false;
  List<Map<String, String>> _messages = [];
  Future<void> sendMessage(String userMessage) async {
    setState(() {
      _messages.add({'role': 'user', 'text': userMessage});
      isloading = true;
      cansent = false;
    });

    final uri = Uri.parse(
      'https://generativelanguage.googleapis.com/v1beta/models/gemini-1.5-flash:generateContent?key=AIzaSyCmlRfRa0b30x3KLhsJyK342FTrcxk2d5U',
    );

    final headers = {'Content-Type': 'application/json'};

    final body = jsonEncode({
      'contents': [
        {
          'parts': [
            {'text': userMessage},
          ],
        },
      ],
    });

    try {
      final response = await http.post(uri, headers: headers, body: body);

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        final botReply = data['candidates'][0]['content']['parts'][0]['text'];

        setState(() {
          _messages.add({'role': 'bot', 'text': botReply});
        });
      } else {
        setState(() {
          _messages.add({
            'role': 'bot',
            'text': 'Something went wrong. Please try again later.',
          });
        });
      }
    } catch (e) {
      setState(() {
        _messages.add({'role': 'bot', 'text': 'Error: $e'});
      });
    } finally {
      setState(() {
        isloading = false;
        msgcontroller.clear();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "ChatBot",
          style: TextStyle(
            fontSize: 25,
            color: const Color.fromARGB(255, 255, 255, 255),
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 78, 245, 95),
        actions: [
          Icon(Icons.chat_bubble_outline),
          Padding(padding: EdgeInsetsGeometry.only(right: 25)),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              reverse: true,
              itemBuilder: (context, index) =>
                  message(_messages.reversed.toList()[index]),
              itemCount: _messages.length,
            ),
          ),
          if (isloading)
            CircularProgressIndicator(
              color: const Color.fromARGB(255, 22, 23, 22),
            ),
          Padding(
            padding: const EdgeInsets.all(19.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: msgcontroller,
                    decoration: InputDecoration(
                      hintText: "type...",
                      fillColor: Colors.blueAccent,
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    sendMessage(msgcontroller.text.trim());
                  },
                  icon: Icon(Icons.send),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget message(Map<String, String> buildmessage) {
    bool user = buildmessage["role"] == 'user';
    return Align(
      alignment: user ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        child: Text(
          buildmessage["text"] ?? '',
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
        padding: EdgeInsets.all(12),
        margin: EdgeInsets.symmetric(vertical: 6, horizontal: 12),
        decoration: BoxDecoration(
          color: user
              ? const Color.fromARGB(255, 88, 240, 98)
              : const Color.fromARGB(255, 108, 197, 237),
          borderRadius: BorderRadius.circular(25),
        ),
      ),
    );
  }
}
