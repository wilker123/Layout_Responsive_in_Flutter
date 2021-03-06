import 'package:flutter/material.dart';
import 'package:project_responsive/breackpoints.dart';

class AdvantagesSections extends StatefulWidget {
  const AdvantagesSections({Key? key}) : super(key: key);

  @override
  _AdvantagesSectionsState createState() => _AdvantagesSectionsState();
}
 
class _AdvantagesSectionsState extends State<AdvantagesSections> {

  Widget buildHorizontalAdvantages(String title, String subtitle){
    return  Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(
            Icons.stars,
            color: Colors.white,
            size:50,
          ),
          const SizedBox(width: 8,),
          Column(
            children: [
              Text(title, style: const TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
              Text(subtitle, style: const TextStyle(color: Colors.white),)
            ],
          ),
        ],
      );
  }

  Widget buildVerticalAdvantages(String title, String subtitle){
    return  Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Icon(
          Icons.stars,
          color: Colors.white,
          size:50,
        ),
        const SizedBox(height: 8,),
        Text(title, textAlign: TextAlign.center, style: const TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
        Text(subtitle, textAlign: TextAlign.center,style: const TextStyle(color: Colors.white),)
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (_, constraints){
          if(constraints.maxWidth >= mobileBreakPoint) {
            return Container(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
              decoration: const BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.grey)),
              ),
              child: Wrap(
                alignment: WrapAlignment.spaceEvenly,
                runSpacing: 16,
                spacing: 8,
                children: [
                  buildHorizontalAdvantages("+45.000 alunos!", "Futuro garantido!"),
                  buildHorizontalAdvantages("+45.000 alunos!", "Futuro garantido!"),
                  buildHorizontalAdvantages("+45.000 alunos!", "Futuro garantido!"),
                ],
              ),
            );
          }else{
            return Container(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
              decoration: const BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.grey)),
              ),
              child: Row(
                children: [
                  Expanded(child: buildVerticalAdvantages("+45.000 alunos!", "Futuro garantido!")),
                  const SizedBox(width: 4,),
                  Expanded(child:buildVerticalAdvantages("+45.000 alunos!", "Futuro garantido!")),
                  const SizedBox(width: 4,),
                  Expanded(child: buildVerticalAdvantages("+45.000 alunos!", "Futuro garantido!")),
                ],
              ),
            );
          }
        }
    );
  }
}
