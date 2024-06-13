import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget portraitBody;
  final Widget landscapeBody;
  const ResponsiveLayout({super.key, required this.portraitBody, required this.landscapeBody});

  @override
  Widget build(BuildContext context) {
    String screenPosition = MediaQuery.of(context).orientation.name;

    return LayoutBuilder(builder: (context, constrains) {
      if (screenPosition == 'portrait') {
        return portraitBody;
      } else {
        return landscapeBody;
      }
    });
  }
}
