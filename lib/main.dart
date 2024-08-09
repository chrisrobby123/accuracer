import 'package:accuracer/screens/home_screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'models/school.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: School(),
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Accracer ',
          theme: ThemeData(
            primarySwatch: Colors.orange,
          ),
          home: const HomeScreen()),
    );
  }
}
