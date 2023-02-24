import 'package:flutter/material.dart';

import '../layout/mobile_screen.dart';
import '../layout/web_screen_layout.dart';

class ResponsiveHandler extends StatelessWidget {
  const ResponsiveHandler({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 900) {
          return const WebScreen();
        }
        return MobileScreen();
      },
    );
  }
}
