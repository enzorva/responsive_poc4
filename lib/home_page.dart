import 'package:flutter/material.dart';

import 'package:responsive_poc4/landscape_body.dart';
import 'package:responsive_poc4/portrait_body.dart';
import 'package:responsive_poc4/responsive_layout.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final visorSize = size.height * 0.25;

    return const SafeArea(
        child: MaterialApp(
      home: Scaffold(
        body: ResponsiveLayout(
          portraitBody: PortraitBody(),
          landscapeBody: LandscapeBody(),
        ),
      ),
    ));
  }
}
