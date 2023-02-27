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
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(child: TextButton(onPressed: (){
            Get.to(ScreenOne());
            //Navigator.push(context, MaterialPageRoute(builder: (context) => ScreenOne()));
          }, child: Text('Go to the Next Screen'))),
        ],
      ),
    );
  }
}
