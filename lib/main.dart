import 'package:flutter_fast_track/state_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fast_track/module/login/view/login_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      navigatorKey: Get.navigatorKey,
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      // ),
      theme: ThemeData.dark(),
      home: const LoginView(),
    );
  }
}
