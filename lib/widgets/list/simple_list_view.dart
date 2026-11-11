import 'package:flutter/material.dart';

class SimpleListView extends StatefulWidget {
// class SimpleListView extends StatelessWidget{
  // final List<Widget> widgets;
  //
  // const SimpleListView({super.key, required this.widgets});
  const SimpleListView({super.key});

  @override
  State<StatefulWidget> createState() {
    return _SimpleState();
  }

}

class _SimpleState extends State<SimpleListView>{

  bool isOn = true;
  double fontSize = 15;
  bool check = false;


  updateSwitch(bool newValue) {
    setState(() {
      isOn = newValue;
    });
  }

  updateSlider(double size){
    setState(() {
      fontSize = size;
    });
  }

  updateCheck(bool? newValue){ //bool? newValue Le ? après bool signifie que newValue peut être : true, false, null. Sans le ? :newValue ne pourrait jamais être null
    setState(() {
      check = newValue ?? false; //L'opérateur ?? signifie : "Utilise la valeur de gauche si elle n'est pas null, sinon utilise celle de droite."
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      // scrollDirection: Axis.horizontal, //La listTile doit ptendre la longuer maximal donc si c'est en horizontal ça donne erreu
      // children: [widgets],
      children: [
        const ListTile(
          title: const Text("Ma première ListTile"),
          subtitle: Text("Nous avons réussi à créer une ListTile"),
          leading: Icon(Icons.search),
          trailing: Icon(Icons.navigate_next),
          iconColor: Colors.deepPurple,
        ),
        ListTile(
          leading: Icon(isOn? Icons.notifications : Icons.notifications_off),
          title: const Text("Notification"),
          trailing: Switch(value: isOn, onChanged: updateSwitch),
        ),
        ListTile(
          leading: const Icon(Icons.text_fields),
          title: Text("Taille du texte", style: TextStyle(fontSize: fontSize ),),
          trailing: SizedBox(width: 100, child: Slider(value: fontSize, min:12, max:24, onChanged: updateSlider),),
        ),
        CheckboxListTile(value: check, onChanged: updateCheck, title: const Text("Mode Développeur"),)
      ],
    );
  }
}