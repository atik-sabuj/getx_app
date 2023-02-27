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
        title: Text('Basic GetX'),
      ),
      body: Card(
        child: Column(
          children: [
            ListTile(
              title: Text('GetX Dialog Alert'),
              subtitle: Text('GetX dialog alert with GetX'),
              onTap: (){
                Get.defaultDialog(
                  title: 'Delete Chat',
                  titlePadding: EdgeInsets.only(top: 20),
                  contentPadding: EdgeInsets.all(20),
                  middleText: 'Are you sure, you want to delete this chat?',
                  /*textConfirm: 'Yes',
                  textCancel: 'No',*/
                  confirm: TextButton(onPressed: (){
                    //Navigator.pop(context);
                    Get.back();
                  }, child: Text('Ok')),
                  cancel: TextButton(onPressed: (){
                    Navigator.pop(context);
                  }, child: Text('Cancel')),
/*                  content: Column(
                    children: [
                      Text('Ok'),
                      Text('Cancel'),
                      Text('Restart'),
                      Text('Check'),
                      Text('Confirm'),
                    ],
                  ),*/
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){

        },
      ),
    );
  }
}
