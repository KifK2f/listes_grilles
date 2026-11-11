import 'package:flutter/material.dart';
import 'package:listes_grilles/widgets/user_tile.dart';

import '../datas/user_datas.dart';

class ListCustom extends StatelessWidget{
  const ListCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.custom(
        childrenDelegate: SliverChildBuilderDelegate((BuildContext context, int index){
          return UserTile(user: users[index]);
        },
        childCount: users.length
        ),
    );
  }
  
  
  
}