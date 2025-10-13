import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_breaking/constants/strings.dart';
import 'package:flutter_breaking/data/models/character_model/character_model.dart';

class CharacterWebServices {
  late Dio dio;

  CharacterWebServices() {
    BaseOptions baseOptions = BaseOptions(
        baseUrl: baseUrl,
        receiveDataWhenStatusError: true,
        connectTimeout: const Duration(seconds: 20),
        receiveTimeout: const Duration(seconds: 20));

    dio = Dio(baseOptions);
  }

  Future<List<dynamic>> getAllCharacter() async {
    try {
      Response response = await dio.get('/character');
      print(response.data.toString());
      return response.data['results'];
    } catch (e) {
      return [];
    }
  }
}
