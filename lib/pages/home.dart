import 'package:flutter/material.dart';
import 'package:listes_grilles/model/list_type.dart';
import 'package:listes_grilles/widgets/builder.dart';
import 'package:listes_grilles/widgets/separated.dart';
import 'package:listes_grilles/widgets/simple_list_view.dart';

import '../model/user.dart';

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
    ListType("Builder", Icons.settings, const BuilderWidget()), // On n'a pas mit Builder tout court pou éviter les conflit de nom car on a déja un Builder prédéfini
    ListType("Séparée", Icons.filter_list, const Separated()),
    ListType("Custom", Icons.list_outlined, const Center()),
  ];

  final List<User> users = [
    User(firstName: "Jean", lastName: "Agbeko", color: Colors.white),
    User(firstName: "Marie", lastName: "Amegah", color: Colors.blue),
    User(firstName: "Pierre", lastName: "Kossi", color: Colors.red),
    User(firstName: "Paul", lastName: "Agbodjan", color: Colors.green),
    User(firstName: "Sophie", lastName: "Amouzou", color: Colors.yellow),
    User(firstName: "Michel", lastName: "Akakpo", color: Colors.orange),
    User(firstName: "Claire", lastName: "Adzaho", color: Colors.purple),
    User(firstName: "André", lastName: "Togbui", color: Colors.pink),
    User(firstName: "Émilie", lastName: "Lawson", color: Colors.cyan),
    User(firstName: "François", lastName: "Dossou", color: Colors.teal),
  ];

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