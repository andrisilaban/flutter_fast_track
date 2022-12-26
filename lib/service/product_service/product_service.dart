import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class ProductService {
  static getProducts() async {
    var response = await Dio().get(
      "https://reqres.in/api/produts",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
    );
    Map obj = response.data;
    debugPrint('ProductService : $obj');
    return obj['data'];
  }
}
