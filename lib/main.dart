import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app/pages/home_screen.dart';
import 'pages/screen_one.dart';
import 'pages/screen_two.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
/*      getPages: [
        GetPage(name: '/', page: () => HomeScreen()),
        GetPage(name: '/screenOne', page: () => ScreenOne()),
        GetPage(name: '/screenTwo', page: () => ScreenTwo()),
      ],*/
    );
  }
}

