import 'package:flutter/material.dart';
import 'package:whatsapp_clone/components/status_widget.dart';

import '../components/end_to_end.dart';

class CallsScreen extends StatelessWidget {
  static String id = "/CallsScreen";

  const CallsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 30,
      ),
      child: Column(
        children: [
          StatusWidget(
            name: "Create call link",
            imageURL:
                "https://i2.wp.com/crast.net/img/2022/12/How-to-create-and-share-WhatsApp-call-links.jpg?resize=1140,570",
            time: "Share a link for your WhatsApp call",
          ),
          const SizedBox(
            height: 50.0,
          ),
          EndToEnd(
            label: "personal calls",
          ),
        ],
      ),
    );
  }
}
