import 'package:flutter/material.dart';

import 'web_app_bar_responsive_content.dart';

class WebAppBar extends StatelessWidget {
  const WebAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      toolbarHeight: 72,
      title: Row(
        children: [
          const Text("Flutter"),
          const SizedBox(
            width: 32,
          ),
          const WebAppBarResponsiveContent(),
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {},
          ),
          const SizedBox(
            width: 24,
          ),
          SizedBox(
            height: 38,
            child: OutlineButton(
              child: const Text("Fazer login"),
              textColor: Colors.white,
              borderSide: const BorderSide(color: Colors.white, width: 2),
              onPressed: () {},
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          SizedBox(
            height: 40,
            child: RaisedButton(
              child: const Text("Cadastre-se"),
              color: Colors.white,
              textColor: Colors.black,
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
