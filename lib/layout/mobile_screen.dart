import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/calls_screen.dart';
import 'package:whatsapp_clone/screens/chat_screens.dart';
import 'package:whatsapp_clone/screens/community_screen.dart';
import 'package:whatsapp_clone/screens/status_screen.dart';

class MobileScreen extends StatefulWidget {
  const MobileScreen({super.key});

  @override
  State<MobileScreen> createState() => _MobileScreenState();
}

class _MobileScreenState extends State<MobileScreen> {
  List<Widget> myTabViews = [
    const CommunityScreen(),
    const ChatScreen(),
    const StatusScreen(),
    const CallsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "WhatsApp",
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
          actions: const [
            Icon(
              Icons.camera_alt_outlined,
              color: Colors.grey,
            ),
            SizedBox(
              width: 30.0,
            ),
            Icon(
              Icons.search,
              color: Colors.grey,
            ),
            SizedBox(
              width: 30.0,
            ),
            Icon(
              Icons.more_vert,
              color: Colors.grey,
            ),
            SizedBox(
              width: 30.0,
            ),
          ],
          bottom: const TabBar(
            labelColor: Color(0xFF00a884),
            indicatorColor: Color(0xFF00a884),
            unselectedLabelColor: Colors.grey,
            tabs: [
              Tab(
                icon: Icon(Icons.people),
              ),
              Tab(
                text: "Chats",
              ),
              Tab(
                text: "Status",
              ),
              Tab(
                text: "Calls",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: myTabViews,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          splashColor: Color(0xFF008069),
          child: Icon(
            Icons.message,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
