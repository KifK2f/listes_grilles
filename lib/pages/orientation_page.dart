import 'package:flutter/material.dart';
import 'package:listes_grilles/widgets/grid/grid_builder.dart';
import 'package:listes_grilles/widgets/list/separated.dart';

class DeviceOrientationPage extends StatelessWidget{
  const DeviceOrientationPage({super.key});

  @override
  Widget build(BuildContext context) {
    Orientation orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      appBar: AppBar(
        title: Text(orientation.toString()),
      ),
      body: (orientation == Orientation.portrait)
        ? const Separated()
          : const GridBuilder()
    );
  }
}