import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app/pages/screen_two.dart';

class ScreenOne extends StatefulWidget {
  final String name;
  const ScreenOne({Key? key, this.name = ''}) : super(key: key);

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen One' +widget.name),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(child: TextButton(onPressed: (){
            Get.to(ScreenTwo());
            //Navigator.pop(context);
          }, child: Text('Go to Screen Two'))),
        ],
      ),
    );
  }
}
