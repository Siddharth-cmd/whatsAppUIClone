import 'package:flutter/material.dart';
import 'package:whatsapp_clone/data/data_chats.dart';
import 'package:whatsapp_clone/screens/convo_screen.dart';

class ChatScreen extends StatefulWidget {
  static String id = "/ChatScreen";

  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30.0),
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.only(bottom: 30.0),
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return ConvoScreen(
                      name: chats[index].name,
                      imageURL: chats[index].imageURL,
                      message: chats[index].message,
                      index: index,
                    );
                  },
                ));
              },
              child: ListTile(
                leading: CircleAvatar(
                  radius: 30.0,
                  backgroundImage: NetworkImage(
                    chats[index].imageURL,
                  ),
                ),
                title: Text(
                  chats[index].name,
                ),
                subtitle: Row(
                  children: [
                    index % 2 == 0
                        ? const Icon(
                            Icons.check,
                            color: Colors.grey,
                          )
                        : Container(
                            child: Text(""),
                          ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      chats[index].message,
                    ),
                  ],
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(
                        right: 1.0,
                      ),
                      child: Text(
                        chats[index].time,
                        style: const TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                  ],
                ),
                horizontalTitleGap: 20.0,
              ),
            ),
          );
        },
        itemCount: chats.length,
      ),
    );
  }
}
