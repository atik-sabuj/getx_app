import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app/example_two/example_two.dart';
import 'package:getx_app/notification/notification_controller.dart';
import 'counter_controller/counter_controller.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  NotificationController notificationController = Get.put(NotificationController());

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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Notifications'),
              Switch(value: notificationController.notification.value, onChanged: (value){
                notificationController.setNotification(value);
              }),
            ],
          ),
        ],
      ),
    );
  }
}