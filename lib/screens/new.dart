import 'package:flutter/material.dart';
import 'package:theme_demo/provider/theme_change.dart';
import 'package:theme_demo/screens/home_page.dart';
import 'package:provider/provider.dart';
class app extends StatelessWidget {
  const app({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("app build");
    return Consumer<Change>(builder: (context,value,child){
      return MaterialApp(
        theme: ThemeData(
            brightness: Brightness.light,
            appBarTheme: AppBarTheme(backgroundColor: Colors.pinkAccent)),
        darkTheme: ThemeData(
          brightness: Brightness.dark,
        ),
        themeMode: value.themeMode,
        home: HomePage(),
      );
    });
  }
}
