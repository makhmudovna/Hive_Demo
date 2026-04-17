import 'package:hive/hive.dart';

class HiveDataBase {
  //hive box
  final _myBox = Hive.box('my box');

  //empty task list
  List<String> taskList = [];

  //method

  //created initial data
  void createdInitialData() {
    taskList = ['Next step learn to SQLite'];
  }

  //load data from hive storage
  void loadData() {
    taskList = List<String>.from(_myBox.get('TODOLIST'));
  }
  
  //updata the data to hive storage
  void updateData() {
    _myBox.put('TODOLIST', taskList);
  }
}
