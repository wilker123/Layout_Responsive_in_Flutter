
import 'package:flutter/material.dart';

class AdvantagesSections extends StatefulWidget {
  const AdvantagesSections({Key? key}) : super(key: key);

  @override
  _AdvantagesSectionsState createState() => _AdvantagesSectionsState();
}

class _AdvantagesSectionsState extends State<AdvantagesSections> {

  Widget buildAdvantage(String title, String subtitle){
  return Row(
    mainAxisSize: MainAxisSize.min,
    children: [
      Icon(
        Icons.stars,
        color: Colors.white,
        size: 50,
      ),
      const SizedBox(width: 8),
      Column(
        children: [
          Text(title, style: const TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
          Text(subtitle, style: const TextStyle(color: Colors.white),)
        ],
      ),
    ],
  );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Wrap(
        alignment: WrapAlignment.spaceEvenly,
        runSpacing: 30,
        children: [
          buildAdvantage("+45.000 alunos!", "Futuro garantido!"),
          buildAdvantage("+45.000 alunos", "Futuro garantido!"),
          buildAdvantage("+45.000 alunos!", "Futuro garantido!"),
        ],
      ),
    );
  }
}
