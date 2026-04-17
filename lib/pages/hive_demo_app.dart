import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_demo/pages/database.dart';
import 'package:hive_demo/widgets/button.dart';
import 'package:hive_demo/widgets/container_list.dart';

class HiveDemoApp extends StatefulWidget {
  const HiveDemoApp({super.key});

  @override
  State<HiveDemoApp> createState() => _HiveDemoAppState();
}

class _HiveDemoAppState extends State<HiveDemoApp> {
  final _taskController = TextEditingController();
  final _myBox = Hive.box('my box');

  HiveDataBase db = HiveDataBase();

  @override
  void initState() {
    super.initState();
    if (_myBox.get('TODOLIST') == null) {
      db.createdInitialData();
    } else {
      db.loadData();
    }
  }

  //save new task
  void saveNewTask() {
    setState(() {
      db.taskList.add(_taskController.text);
      _taskController.clear();
      db.updateData();
    });
  }

  //remove task
  void removeTask(int index) {
    setState(() {
      db.taskList.removeAt(index);
      db.updateData();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Hive Demo',
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Color.fromARGB(255, 132, 83, 218)),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 46,
              child: TextField(
                controller: _taskController,
                decoration: InputDecoration(
                  labelText: 'Enter your task',
                  labelStyle: const TextStyle(
                    color: Colors.grey, // binafsha rang
                    fontSize: 14,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),
                    borderSide: const BorderSide(
                      color: Colors.grey,
                      width: 1.2,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),
                    borderSide: const BorderSide(
                      color: Colors.grey,
                      width: 1.2,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Button(
              backgroundColor: const Color.fromARGB(255, 132, 83, 218),
              txt: 'Done',
              onPressed: saveNewTask,
            ),
            const SizedBox(
              height: 10,
            ),
            Button(
              backgroundColor: Colors.grey,
              txt: 'Remove',
              onPressed: () {
                if (db.taskList.isNotEmpty) {
                  removeTask(db.taskList.length - 1);
                }
              },
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Task List',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Color.fromARGB(255, 132, 83, 218)),
            ),
            const SizedBox(
              height: 10,
            ),
            ContainerList(
              taskList: db.taskList,
              onRemove: removeTask,
            ),
          ],
        ),
      ),
    );
  }
}
