import 'package:flutter/material.dart';
import 'package:listes_grilles/widgets/user_card.dart';

import '../../datas/user_datas.dart';


class GridExtent extends  StatelessWidget {
  const GridExtent({super.key});


  @override
  Widget build(BuildContext context) {
    return GridView.extent(
      maxCrossAxisExtent: 128,
      mainAxisSpacing: 12,
      crossAxisSpacing: 12,
      children: List.generate(250, (i) => CircleAvatar(
          backgroundColor: Colors.deepPurple,
          radius: 64,
          child: Text("$i"),)),
    );
  }

}