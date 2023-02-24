import 'package:flutter/material.dart';
import 'package:whatsapp_clone/shared/colors.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20.0, bottom: 30.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22.0),
        color: KappBarColor,
      ),
      child: TextFormField(
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.emoji_emotions,
          ),
          suffixIcon: Row(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Icon(
                Icons.attach_file,
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.currency_rupee,
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.camera_alt_outlined,
              ),
              SizedBox(
                width: 10,
              )
            ],
          ),
          border: InputBorder.none,
          hintStyle: TextStyle(
            color: Colors.grey,
          ),
          hintText: "Message",
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
