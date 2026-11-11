import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:listes_grilles/model/list_type.dart';
import 'package:listes_grilles/pages/my_tab.dart';
import 'package:listes_grilles/pages/orientation_page.dart';
import 'package:listes_grilles/widgets/grid/grid_builder.dart';
import 'package:listes_grilles/widgets/grid/grid_count.dart';
import 'package:listes_grilles/widgets/grid/grid_custom.dart';
import 'package:listes_grilles/widgets/grid/grid_extent.dart';
import 'package:listes_grilles/widgets/grid/grid_simple.dart';
import 'package:listes_grilles/widgets/list/builder.dart';
import 'package:listes_grilles/widgets/list/list_custom.dart';
import 'package:listes_grilles/widgets/list/separated.dart';
import 'package:listes_grilles/widgets/list/simple_list_view.dart';

import '../model/user.dart';

class HomePage extends StatelessWidget{
  HomePage({super.key});

  final List<ListType> _lists = [
    ListType("Simple", Icons.list, const SimpleListView()),
    ListType("Builder", Icons.settings, const BuilderWidget()), // On n'a pas mit Builder tout court pou éviter les conflit de nom car on a déja un Builder prédéfini
    ListType("Séparée", Icons.filter_list, const Separated()),
    ListType("Custom", Icons.list_outlined, const ListCustom()),
  ];

  final List<ListType> _grids = [
    ListType("Simple", Icons.list, const GridSimple()),
    ListType("Builder", Icons.settings, const GridBuilder()),
    ListType("Count", Icons.filter_list, const GridCount()),
    ListType("Extent", Icons.list_outlined, const GridExtent()),
    ListType("Custom", Icons.list_outlined, const GridCustom()),
  ];

  @override
  Widget build(BuildContext context) {
    //On peut le faire pour toute l'application ou pour une page spécifique
    // SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]); // Bloquer l'orienttaion sur portrait UP
    // SystemChrome.setPreferredOrientations([DeviceOrientation.portraitDown]); // Bloquer l'orienttaion sur portrait inversé
    return Scaffold(
      appBar: AppBar(
        title: const Text("Liste et Grilles"),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextButton(onPressed: (() => toNext("Liste ", _lists, context)),
                child: const Text("Les Listes")),
            TextButton(onPressed: (() => toNext("Grille ", _grids, context))
                , child: const Text("Les Grilles")),

            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const DeviceOrientationPage()));
            }, child: const Text("Orientation"))
          ],
        ),
      ),
    );
  }
  toNext(String name, List<ListType> type, BuildContext context){
    Navigator.push(context, MaterialPageRoute(builder: (context){
      return MyTab(name, type);
    }));
  }
}