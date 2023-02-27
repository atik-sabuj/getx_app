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
          ListTile(
            title: Text('message'.tr),
            subtitle: Text('name'.tr),
          ),
          SizedBox(height: 50,),
          Row(
            children: [
              OutlinedButton(onPressed: (){
                Get.updateLocale(Locale('en', 'US'));
              }, child: Text('English')),

              SizedBox(width: 20,),

              OutlinedButton(onPressed: (){
                Get.updateLocale(Locale('ur', 'PK'));
              }, child: Text('Urdu')),

              SizedBox(width: 20,),

              OutlinedButton(onPressed: (){
                Get.updateLocale(Locale('ban', 'BD'));
              }, child: Text('Bangla')),
            ],
          ),
        ],
      ),
    );
  }
}
