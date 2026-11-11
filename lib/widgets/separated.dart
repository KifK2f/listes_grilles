import 'package:flutter/material.dart';
import 'package:listes_grilles/widgets/user_tile.dart';

import '../datas/user_datas.dart';
import '../model/user.dart';

class Separated extends StatefulWidget {
  const Separated({super.key});

  @override
  State<StatefulWidget> createState() {
    return SeparatedState();
  }
}


class SeparatedState extends State<Separated>{
  @override
  Widget build(BuildContext context) {
    return ListView.separated(itemBuilder: ((BuildContext context, int index) =>
        Dismissible(
          direction: DismissDirection.endToStart, //Force le dissmissible d'un seul côté
          key: UniqueKey(),
          // key: ValueKey<int>(index),
            onDismissed: (direction){
          setState(() {
            users.removeAt(index);
          });
            },
            background: Container(
              color: Colors.red,
              padding: const EdgeInsets.only(right: 16),
              child: const Icon(Icons.delete, color: Colors.white,),
              alignment: Alignment.centerRight,
            ),
            child: UserTile(user: users[index]),
        )
        ),
        // separatorBuilder: ((BuildContext context, int index) => Divider()),
        separatorBuilder: (( context,  index) =>  Divider( //Modifier légèrement le Divider
          indent: 18,
          endIndent: 18,
          color: users[index].color,
        )),
        itemCount: users.length);
  }
  }