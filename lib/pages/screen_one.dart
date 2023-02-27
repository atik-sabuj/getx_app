import 'package:flutter/material.dart';
class ScreenOne extends StatefulWidget {
  const ScreenOne({Key? key}) : super(key: key);

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen One'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(child: TextButton(onPressed: (){
            Navigator.pop(context);
          }, child: Text('Go Back'))),
        ],
      ),
    );
  }
}
