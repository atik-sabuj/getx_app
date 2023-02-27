import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app/pages/screen_one.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;

    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
        centerTitle: true,
      ),
      body: Container(
        height: Get.height * .3,
        //height: MediaQuery.of(context).size.height * .3,
        color: Colors.teal,
        child: Center(
          child: Text('Center'),
        ),
      ),
    );
  }
}
