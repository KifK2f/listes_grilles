import 'package:flutter/material.dart';
import 'package:listes_grilles/model/list_type.dart';

class MyTab extends StatelessWidget {

  final List<ListType> _lists;
  final String name;

  const MyTab(this.name, this._lists, {super.key});



  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: _lists.length,
        child: Scaffold(
          appBar: AppBar(
            title: Text(name),
            centerTitle: true,
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            bottom: TabBar(tabs: _lists.map((item) => item.tab).toList()),
          ),
          body: TabBarView(children: _lists.map((item) => item.list).toList()),
        )
    );
  }
}