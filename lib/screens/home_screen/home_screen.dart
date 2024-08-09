import 'package:accuracer/models/school.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final sckul = Provider.of<School>(context);
    return Scaffold(
        appBar: AppBar(
          title: const Text('trying api'),
        ),
        body: ElevatedButton(
            onPressed: () async {
              await sckul.addSchools();
            },
            child: const Text('let pop it up')));
  }
}
