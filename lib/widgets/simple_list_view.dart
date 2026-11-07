import 'package:flutter/material.dart';

class SimpleListView extends StatelessWidget{
  // final List<Widget> widgets;
  //
  // const SimpleListView({super.key, required this.widgets});
  const SimpleListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      // children: [widgets],
      children: [],
    );
  }
}