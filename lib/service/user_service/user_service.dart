import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class UserService {
  static getUsers() async {
    var response = await Dio().get(
      'https://reqres.in/api/users',
      options: Options(
        headers: {
          'Content-type': 'application/json',
        },
      ),
    );
    Map obj = response.data;
    debugPrint('getUsers DATATYPE: ${obj.runtimeType}');
    debugPrint('getUsers LENGTH: ${obj.length}');
    debugPrint('getUsers : ${obj['data']}');
    // debugPrint('getUsers : $obj');
    return obj['data'];
  }

  static addUsers() async {
    var response = await Dio().post(
      "https://reqres.in/api/users",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
      data: {
        "name": "morpheus",
        "job": "programmer",
      },
    );
    Map obj = response.data;
  }

  static updateUsers() async {
    var id = 2;
    var response = await Dio().put(
      "https://reqres.in/api/users/$id",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
      data: {
        "name": "granfield",
        "job": "system analyst",
      },
    );
    Map obj = response.data;
  }

  static deleteUser() async {
    var id = 2;
    var response = await Dio().delete(
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
      "https://reqres.in/users/$id",
    );
    print(response.statusCode);
  }
}
