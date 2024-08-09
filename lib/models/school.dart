import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class School with ChangeNotifier {
  // final String id;
  // final String title;
  // final String imageUrl;
  // final String message;

  // School(
  //     {required this.id,
  //     required this.imageUrl,
  //     required this.message,
  //     required this.title});

  Future<void> addSchools() async {
    const url = 'http://10.40.32.153:9876/school';
    final response = await http.get(Uri.parse(url));
    print(json.decode(response.body));
    final extractedData = json.decode(response.body) as Map<String, dynamic>;
    extractedData.forEach((key, value) {
      final title = value['title'];
      final college = extractedData['college'];
      final program = extractedData['program'];
    });
    // final title = extractedData['title'];
    // final college = extractedData['college'];
    // final program = extractedData['program'];
  }
  
}
