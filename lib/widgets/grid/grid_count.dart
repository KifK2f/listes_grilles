import 'package:flutter/material.dart';
import 'package:listes_grilles/widgets/user_card.dart';

import '../../datas/user_datas.dart';


class GridCount extends  StatelessWidget {
  const GridCount({super.key});


  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      crossAxisSpacing: 8,
      mainAxisSpacing: 8,
      children: List.generate(10, (i){
        final shade = i * 100;
        return Container(
          decoration: BoxDecoration(
            color: Colors.deepPurple[shade],
            borderRadius: BorderRadius.circular(16)
          ),
          child: Center(
            child: Text("La shade est ici de : \n$shade", style: TextStyle(fontSize: 24, color: Colors.deepOrangeAccent), textAlign: TextAlign.center,),
          ),
        );
      }),
    );
  }

}