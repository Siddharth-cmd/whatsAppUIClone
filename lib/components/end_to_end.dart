import 'package:flutter/material.dart';

class EndToEnd extends StatelessWidget {
  String label;

  EndToEnd({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20.0),
      child: Row(
        children: [
          Icon(
            Icons.lock,
            color: Colors.grey,
          ),
          SizedBox(
            width: 5.0,
          ),
          Text(
            "Your $label are ",
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
          Text(
            "end-to-end encrypted",
            style: TextStyle(
              color: Colors.green,
            ),
          ),
        ],
      ),
    );
  }
}
