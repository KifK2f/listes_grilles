import 'package:flutter/material.dart';
import 'package:listes_grilles/widgets/user_card.dart';

import '../../datas/user_datas.dart';


class GridBuilder extends  StatelessWidget {
  const GridBuilder({super.key});


  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2
      ),
      itemBuilder: (context, index){
        return UserCard(user: users[index]);
      },
    );
  }

}