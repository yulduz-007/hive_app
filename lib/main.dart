
import 'package:flutter/material.dart';
import 'package:have_app/home_page.dart';

import 'package:hive_flutter/adapters.dart';

void main()async{
  await Hive.initFlutter();
   await Hive.openBox("nemnig");

  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home_Page(),
    );
  }
}