import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whatsapp_ui_ux/call.dart';
import 'package:whatsapp_ui_ux/chatbotpage.dart';
import 'package:whatsapp_ui_ux/chats.dart';
import 'package:whatsapp_ui_ux/communities.dart';
import 'package:whatsapp_ui_ux/update.dart';

class mainpagescreen extends StatefulWidget {
  const mainpagescreen({super.key});

  @override
  State<mainpagescreen> createState() => _mainpagescreenState();
}

class _mainpagescreenState extends State<mainpagescreen> {
  int index = 0;
  List<Widget> pages = [
    Chatscreen(),
    Updatescreen(),
    Communitiescreen(),
    Callscreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Chatbotscrren()),
          );
        },
        child: Icon(Icons.message_outlined),
        backgroundColor: Colors.green,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.messenger_outline),
            backgroundColor: Colors.black,
            label: "Chats",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.update_disabled_outlined),
            label: "Update",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people_alt_outlined),
            label: "Communities",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call_outlined),
            label: "Call",
          ),
        ],
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.white,
        currentIndex: index,
        type: BottomNavigationBarType.shifting,
        onTap: (tapedindex) {
          setState(() {
            index = tapedindex;
          });
        },
      ),
      body: pages[index],
    );
  }
}
