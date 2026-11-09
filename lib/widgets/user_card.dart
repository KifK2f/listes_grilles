import 'package:flutter/material.dart';
import 'package:listes_grilles/model/user.dart';

class UserCard extends StatelessWidget{
  final User user;

  const UserCard({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: user.color.withValues(alpha: 0.7),
      margin: const EdgeInsets.all(12),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: Column(
          children: [
            CircleAvatar(
              radius: 34,
              backgroundColor: user.color,
              child: Text(user.initial),
            ),
            const SizedBox(height: 16,),
            Text(user.fullName, style: Theme.of(context).textTheme.titleMedium,)
          ],
        ),
      ),
    );
  }
}