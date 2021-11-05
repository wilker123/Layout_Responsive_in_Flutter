import 'package:flutter/material.dart';
import 'package:project_responsive/breackpoints.dart';

import 'widgets/app_bar/mobile_app_bar.dart';
import 'widgets/app_bar/web_app_bar.dart';

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
              : PreferredSize(
                  child: WebAppBar(),
                  preferredSize: Size(double.infinity, 60),
                ),
          drawer: constraints.maxWidth <= mobileBreakPoint ? Drawer() : null,
        );
      },
    );
  }
}
