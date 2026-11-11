import 'package:flutter/material.dart';
import 'package:listes_grilles/model/list_type.dart';
import 'package:listes_grilles/widgets/list/builder.dart';
import 'package:listes_grilles/widgets/list/simple_list_view.dart';

class HomePage extends StatelessWidget{
  HomePage({super.key});

  // final List<Widget> _children = [
  //     Container(height: 200, width: 250, color: Colors.red,),
  //     Container(height: 400, width: 250, color: Colors.green,),
  //     Container(height: 300, width: 250, color: Colors.blue,),
  //     Container(height: 600, width: 250, color: Colors.deepPurple,),
  //     Container(height: 150, width: 250, color: Colors.orangeAccent,),
  //     Container(height: 700, width: 250, color: Colors.yellow,),
  //     Container(height: 450, width: 250, color: Colors.pink,),
  // ];

  final List<ListType> _lists = [
    ListType("Simple", Icons.list, const SimpleListView()),
    ListType("Builder", Icons.settings, BuilderWidget()), // On n'a pas mit Builder tout court pou éviter les conflit de nom car on a déja un Builder prédéfini
    ListType("Séparée", Icons.filter_list, const Center()),
    ListType("Custom", Icons.list_outlined, const Center()),
  ];

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(
  //       backgroundColor: Theme.of(context).colorScheme.inversePrimary,
  //       title: const Text("Liste et Grilles"),
  //       centerTitle: true,
  //     ),
  // body: SimpleListView(widgets: _children,)
  //     body: SingleChildScrollView(
  //         child: Column(
  //           children: _children,
  //         ),
  //     )
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: _lists.length, 
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Listes est Grilles"),
          centerTitle: true,
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          bottom: TabBar(tabs: _lists.map((item) => item.tab).toList()),
        ),
        body: TabBarView(children: _lists.map((item) => item.list).toList()),
      )
    );
  }
}