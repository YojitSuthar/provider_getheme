import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theme_demo/provider/theme_change.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final change=Provider.of<Change>(context,listen: false);
    print("homePage");
    return Scaffold(
      appBar: AppBar(
        title: const Text("Theme changer"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(onPressed: (){
                change.changeT(ThemeMode.light);
              }, child: Text("Light")),
              ElevatedButton(onPressed: (){
                change.changeT(ThemeMode.dark);
              }, child: Text("Dark")),
              ElevatedButton(onPressed: (){
                change.changeT(ThemeMode.system);
              }, child: Text("System")),
            ],
          )
        ],
      ),
    );;
  }
}
