import 'package:flutter/material.dart';
import 'package:whatsapp_clone/shared/colors.dart';

import '../components/my_text_field.dart';

class ConvoScreen extends StatelessWidget {
  static String id = "/ConvoScreen";

  final String name;
  final String imageURL;
  final String message;
  final int index;

  const ConvoScreen({
    super.key,
    required this.name,
    required this.imageURL,
    required this.message,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(
                imageURL,
              ),
            ),
            SizedBox(
              width: 15.0,
            ),
            Expanded(child: Text(name)),
          ],
        ),
        leadingWidth: 80.0,
        actions: [
          Icon(
            Icons.video_camera_front_outlined,
          ),
          SizedBox(
            width: 20.0,
          ),
          Icon(Icons.call),
          SizedBox(
            width: 20.0,
          ),
          Icon(Icons.more_vert),
          SizedBox(
            width: 20.0,
          )
        ],
      ),
      body: Column(
        children: [
          Flexible(
            child: Container(),
          ),
          index % 2 == 0
              ? Container(
                  padding: EdgeInsets.only(
                    top: 20,
                    bottom: 20,
                    left: 20,
                    right: 20,
                  ),
                  margin: EdgeInsets.only(
                    left: 150,
                    bottom: 10,
                  ),
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(
                        20,
                      )),
                  child: Text(message),
                )
              : Container(
                  padding: EdgeInsets.only(
                    top: 20,
                    bottom: 20,
                    left: 20,
                    right: 20,
                  ),
                  margin: EdgeInsets.only(
                    right: 240,
                    bottom: 10,
                  ),
                  decoration: BoxDecoration(
                      color: KappBarColor,
                      borderRadius: BorderRadius.circular(
                        20,
                      )),
                  child: Text(message),
                ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: MyTextField(),
              ),
              Container(
                margin: EdgeInsets.only(right: 20.0),
                child: IconButton(
                  color: Colors.green,
                  onPressed: () {},
                  icon: Icon(
                    Icons.mic,
                    size: 40,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
