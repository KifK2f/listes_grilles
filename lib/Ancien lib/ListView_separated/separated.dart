import 'package:flutter/material.dart';
import 'package:listes_grilles/widgets/user_tile.dart';

import '../../datas/user_datas.dart';

// import './user_datas.dart';

class Separated extends StatelessWidget {
  const Separated({super.key});



  @override
  Widget build(BuildContext context) {
    return ListView.separated(itemBuilder: ((BuildContext context, int index) => UserTile(user: users[index])),
        // separatorBuilder: ((BuildContext context, int index) => Divider()),
        separatorBuilder: (( context,  index) =>  Divider( //Modifier légèrement le Divider
          indent: 18,
          endIndent: 18,
          color: users[index].color,
        )),
        itemCount: users.length);
  }

}