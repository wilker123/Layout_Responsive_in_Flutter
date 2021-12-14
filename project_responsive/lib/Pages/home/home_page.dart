import 'package:flutter/material.dart';
import 'package:project_responsive/breackpoints.dart';

import 'widgets/app_bar/mobile_app_bar.dart';
import 'widgets/app_bar/web_app_bar.dart';
import 'widgets/sections/top_section.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          appBar: constraints.maxWidth < mobileBreakPoint
              ? const PreferredSize(
                  child: MobileAppBar(),
                  preferredSize: Size(double.infinity, 56),
                )
              : const PreferredSize(
                  child: WebAppBar(),
                  preferredSize: Size(double.infinity, 60),
                ),
          drawer: constraints.maxWidth <= mobileBreakPoint ? const Drawer() : null,
          body: Align(
            alignment: Alignment.topCenter,
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 1200),
              child: ListView(
                children: const [
                  TopSection(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
