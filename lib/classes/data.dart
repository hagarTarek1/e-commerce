import 'dart:convert';

import 'package:flutter/services.dart';

import '../models/model.dart';

class DataSeeder {
  static Map _data = {};

  static List<CategoryData> categories = [];

  static Future<void> loadData() async {
    await Future.delayed(const Duration(seconds: 5));
    var response = await rootBundle.loadString('assets/data.json');
    _data = jsonDecode(response);

    categories = (_data['categories'] as List)
        .map((e) => CategoryData.fromJson(e))
        .toList();
  }
}