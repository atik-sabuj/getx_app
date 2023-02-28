import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app/example_two/example_two.dart';
import 'counter_controller/counter_controller.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Row(
            children: [
              Text('Notifications'),
              Switch(value: false, onChanged: (value){

              }),
            ],
          ),
        ],
      ),
    );
  }
}