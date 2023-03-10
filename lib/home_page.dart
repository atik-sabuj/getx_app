import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app/example_two/example_two.dart';
import 'package:getx_app/favorite_controller/favorite_controller.dart';
import 'package:getx_app/image_picker/image_picker_controller.dart';
import 'package:getx_app/login_controller/login_controller.dart';
import 'package:getx_app/notification/notification_controller.dart';
import 'counter_controller/counter_controller.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  LoginController controller = Get.put(LoginController());

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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextFormField(
                controller: controller.emailController.value,
                decoration: InputDecoration(
                  hintText: 'Email',
                ),
              ),
              TextFormField(
                controller: controller.passwordController.value,
                decoration: InputDecoration(
                  hintText: 'Password',
                ),
              ),
              SizedBox(height: 50,),
              Obx((){
                return InkWell(
                  onTap: (){
                    controller.loginApi();
                  },
                  child: controller.loading.value ? CircularProgressIndicator() : Container(
                    height: 45,
                    color: Colors.teal,
                    child: Center(
                      child: Text('Log In'),
                    ),
                  ),
                );
              })
            ],
          ),
      ),
    );
  }
}