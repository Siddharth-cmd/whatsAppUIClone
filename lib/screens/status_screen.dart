import 'package:flutter/material.dart';
import 'package:whatsapp_clone/components/end_to_end.dart';

import '../components/status_widget.dart';

class StatusScreen extends StatelessWidget {
  static String id = "/StatusScreen";

  const StatusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 10.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          StatusWidget(
            name: "My Status",
            imageURL:
                "https://images.ctfassets.net/23aumh6u8s0i/4TsG2mTRrLFhlQ9G1m19sC/4c9f98d56165a0bdd71cbe7b9c2e2484/flutter",
            time: "Today, 12:18 am",
          ),
          const SizedBox(
            height: 30.0,
          ),
          Container(
            margin: const EdgeInsets.only(left: 20.0),
            child: const Text(
              "Recent updates",
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          StatusWidget(
            name: "Johnny Depp",
            imageURL:
                "https://static.wikia.nocookie.net/pirates/images/6/62/Black_Pearl_infobox.png/revision/latest?cb=20171110192901",
            time: "Today, 2:19 pm",
          ),
          const SizedBox(
            height: 10.0,
          ),
          StatusWidget(
            name: "Peter Parker",
            imageURL: "https://i.ytimg.com/vi/wH_Q4-OUHNw/sddefault.jpg",
            time: "Today,9:45 am",
          ),
          const SizedBox(
            height: 10.0,
          ),
          Container(
            margin: const EdgeInsets.only(left: 20.0),
            child: const Text(
              "Viewed Updates",
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          StatusWidget(
            name: "Andrew Garfield",
            imageURL:
                "https://www.koimoi.com/wp-content/new-galleries/2023/02/andrew-garfield-got-stoned-did-tobey-maguires-spider-man-lines-001.jpg",
            time: "Yesterday, 6:00 pm",
          ),
          SizedBox(
            height: 30.0,
          ),
          EndToEnd(
            label: "status updates",
          ),
        ],
      ),
    );
  }
}
