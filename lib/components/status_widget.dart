import 'package:flutter/material.dart';

class StatusWidget extends StatelessWidget {
  String name;
  String imageURL;
  String time;

  StatusWidget({
    Key? key,
    required this.name,
    required this.imageURL,
    required this.time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(name),
      leading: CircleAvatar(
        backgroundImage: NetworkImage(
          imageURL,
        ),
      ),
      subtitle: Text(time),
      horizontalTitleGap: 20.0,
    );
  }
}
