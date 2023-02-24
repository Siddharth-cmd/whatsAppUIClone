import 'package:flutter/material.dart';
import 'package:whatsapp_clone/shared/colors.dart';

class MyButton extends StatelessWidget {
  String label;
  VoidCallback onpress;

  MyButton({
    super.key,
    required this.label,
    required this.onpress,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        left: size.width * 0.1,
        right: size.width * 0.1,
      ),
      decoration: BoxDecoration(
        color: KtabColor,
        borderRadius: BorderRadius.circular(
          20.0,
        ),
      ),
      width: double.infinity,
      child: TextButton(
        onPressed: onpress,
        child: Text(
          label,
          style: TextStyle(
            color: KtextColor,
          ),
        ),
      ),
    );
  }
}
