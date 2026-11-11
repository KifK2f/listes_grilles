import 'package:flutter/material.dart';
import 'package:listes_grilles/widgets/user_card.dart';

import '../../datas/user_datas.dart';


class GridCustom extends  StatelessWidget {
  const GridCustom({super.key});


  @override
  Widget build(BuildContext context) {
    return GridView.custom(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2
      ),
      childrenDelegate: SliverChildBuilderDelegate((c, i) => Center(child: Text("$i"),),
      childCount: 8
      ),
    );
  }

}