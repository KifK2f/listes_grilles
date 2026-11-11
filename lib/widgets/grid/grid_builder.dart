import 'package:flutter/material.dart';
import 'package:listes_grilles/widgets/user_card.dart';

import '../../datas/user_datas.dart';


class GridBuilder extends  StatelessWidget {
  const GridBuilder({super.key});


  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 1.5
      ),
      itemCount: users.length, // limite le builder au nombre réel d'éléments
      itemBuilder: (context, index){
        return UserCard(user: users[index]);
      },
    );
  }

}