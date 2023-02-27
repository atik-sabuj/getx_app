import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int x = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    
    Timer.periodic(Duration(seconds: 1), (timer) {
      x++;
      setState(() {

      });
    });
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
            child: Text(x.toString(), style: TextStyle(fontSize: 60),),
          ),
          Expanded(child: ListView.builder(
            itemCount: 10000,
              itemBuilder: (context, index){
                return ListTile(
                  title: Text(index.toString()),
                );
              }
          )
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          x++;
          setState(() {

          });
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
