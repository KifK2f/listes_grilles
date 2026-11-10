import 'package:flutter/material.dart';

import '../../model/user.dart';

class DetailPage extends StatelessWidget {
  final User user; // On va récupére le User

  const DetailPage({super.key, required this.user});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(user.firstName),
        backgroundColor: user.color,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              radius: 75,
                backgroundColor: user.color,
              child: Text(user.initial),
            ),
            const SizedBox(height: 75,),
            Text(user.fullName, style: Theme.of(context).textTheme.headlineMedium,)
          ],
        ),
      ),
    );
  }

}