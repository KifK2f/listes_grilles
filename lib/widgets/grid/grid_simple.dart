import 'package:flutter/material.dart';

class GridSimple extends  StatelessWidget {
  const GridSimple({super.key});


  @override
  Widget build(BuildContext context) {
    return GridView(
      // scrollDirection: Axis.horizontal,
    //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
    //     crossAxisCount: 2, // Nombre de children par sens
    //     mainAxisSpacing: 8, //8 pixels d'expace
    //     crossAxisSpacing: 12,
    //     childAspectRatio: 0.5 // 9a veit dire qu'on sera 2 fois plus haut que large
    // ),
      gridDelegate:  SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: MediaQuery.of(context).size.width / 2,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8
    ),
    children: [
      Container(color: Colors.deepOrange,),
      Container(color: Colors.lightGreen,),
      Container(color: Colors.red,),
      Container(color: Colors.deepPurple,),
      Container(color: Colors.brown,),
      Container(color: Colors.black,),
      Container(color: Colors.yellow,),
    ],
    );
  }

}