import 'package:flutter/material.dart';
import 'package:listes_grilles/model/user.dart';

import '../datas/user_datas.dart';

class BuilderWidget extends StatelessWidget{
  const BuilderWidget({super.key});



  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: users.length,
        itemBuilder: (BuildContext context, int index){
        User user = users[index];
          return ListTile(
            title: Text(user.fullName),
            leading: CircleAvatar(radius: 15, backgroundColor: user.color, child: Text(user.initial),),
          );
        }
    );
  }

}