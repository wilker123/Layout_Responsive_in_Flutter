import 'package:flutter/material.dart';

class CourseItem extends StatelessWidget {
  const CourseItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network("https://miro.medium.com/max/700/1*73IgUxPfyXUKZAaIXgutrw.png")
      ],
    );
  }
}
