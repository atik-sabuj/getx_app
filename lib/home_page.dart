import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app/example_two/example_two.dart';
import 'package:getx_app/favorite_controller/favorite_controller.dart';
import 'package:getx_app/notification/notification_controller.dart';
import 'counter_controller/counter_controller.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  FavoriteController favoriteController = Get.put(FavoriteController());

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
      body: ListView.builder(
        itemCount: favoriteController.fruitList.length,
          itemBuilder: (context, index){
          return Card(
            child: ListTile(
              onTap: (){

                if(tempFruitList.contains(fruitList[index].toString())){
                  tempFruitList.remove(fruitList[index].toString());
                }else {
                  tempFruitList.add(fruitList[index].toString());
                }

                setState(() {

                });
              },
              title: Text(fruitList[index].toString()),
              trailing: Icon(Icons.favorite,
                color: tempFruitList.contains(fruitList[index].toString()) ? Colors.red : Colors.white,),
            ),
          );
          }),
    );
  }
}