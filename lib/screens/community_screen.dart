import 'package:flutter/material.dart';
import 'package:whatsapp_clone/components/community_widget.dart';

class CommunityScreen extends StatelessWidget {
  static String id = "/CommunityScreen";

  const CommunityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: CommunityWidget(),
    );
  }
}
