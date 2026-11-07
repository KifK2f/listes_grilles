import 'package:flutter/material.dart';

class ListType {
  final String _name;
  final IconData _icon;
  final Widget _list;

  String get name => _name;
  Icon get icon => Icon(_icon);
  Widget get list => _list;
  Tab get tab => Tab(text: _name, icon: icon,);

  ListType(this._name, this._icon, this._list);
}