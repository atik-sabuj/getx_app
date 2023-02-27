import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
      ),
      body: Column(
        children: [

        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
          Get.snackbar('Sabuj Atik',
              'Subscribe My Channel',
              icon: Icon(Icons.add),
              onTap: (snap){
            
              },
            mainButton: TextButton(onPressed: (){},
                child: Text('Click')),
              backgroundColor: Colors.teal,
            snackPosition: SnackPosition.BOTTOM,
          );
        },
      ),
    );
  }
}
