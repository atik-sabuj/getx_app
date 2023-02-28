import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'counter_controller/counter_controller.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final CounterController controller = Get.put(CounterController());
  int counter = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    print('Rebuild');
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Center(
            child: Text(counter.toString(), style: TextStyle(fontSize: 60),),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          counter++;
          setState(() {});
        },
      ),


      /*Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        ],
      ),*/
    );;
  }
}