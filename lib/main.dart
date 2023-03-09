import 'package:flutter/material.dart';
import 'package:theme_demo/provider/theme_change.dart';
import 'package:provider/provider.dart';
import 'package:theme_demo/screens/new.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context)=>Change()),
      ],
      child: app(),
    );
  }
}
