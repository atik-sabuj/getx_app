import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app/example_two/example_two.dart';
import 'package:getx_app/favorite_controller/favorite_controller.dart';
import 'package:getx_app/image_picker/image_picker_controller.dart';
import 'package:getx_app/notification/notification_controller.dart';
import 'counter_controller/counter_controller.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  ImagePickerController controller = Get.put(ImagePickerController());

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
      body: Obx((){
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: CircleAvatar(
                radius: 40,
                backgroundImage: controller.imagePath.isNotEmpty ?
                FileImage(File(controller.imagePath.toString())): null,
              ),
            ),
            TextButton(onPressed: (){
              controller.getImage();
            },
                child: Text('Pick Image')),
          ],
        );
      }),
    );
  }
}