
import 'package:get/get.dart';

class FavoriteController extends GetxController {

  RxList<String> fruitList = ['Apple', 'Banana', 'Orange', 'Mango', 'Pine-apple'].obs;
  RxList tempFruitList = [].obs;


  addToFavorite(String value){
    tempFruitList.add(value);
  }

  removeFormFavorite(String value){
    tempFruitList.remove(value);
  }
}