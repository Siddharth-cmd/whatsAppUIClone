import 'package:flutter/material.dart';

class CommunityWidget extends StatelessWidget {
  const CommunityWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.grey,
        child: Icon(
          Icons.people,
          color: Colors.white,
        ),
      ),
      title: Text(
        "New community",
      ),
    );
  }
}
