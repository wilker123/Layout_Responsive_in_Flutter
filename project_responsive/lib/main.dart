import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'Pages/home/home_page.dart';

void main() {
  runApp(DevicePreview(builder: (_) => MyApp()));
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Projeto Layout Responsivo',
      builder: DevicePreview.appBuilder,
      locale: DevicePreview.locale(context),
      home: HomePage(),
    );
  }
}

