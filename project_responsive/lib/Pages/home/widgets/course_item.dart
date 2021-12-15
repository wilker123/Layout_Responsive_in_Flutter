import 'package:flutter/material.dart';

class CourseItem extends StatelessWidget {
  const CourseItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.network("https://miro.medium.com/max/700/1*73IgUxPfyXUKZAaIXgutrw.png", fit: BoxFit.fitWidth,),
        const SizedBox(height: 4,),
        const Text(
          "Criação de apps android e ios com flutter - Crie 16 apps",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.white),
        ),
        const Text("José Wilker", style: TextStyle(color: Colors.grey),),
        const Text("R\$22,90", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Colors.white),),
      ],
    );
  }
}
