import 'package:flutter/material.dart';
import 'package:hive_demo/widgets/button.dart';
import 'package:hive_demo/widgets/container_list.dart';

class HiveDemoApp extends StatefulWidget {
  const HiveDemoApp({super.key});

  @override
  State<HiveDemoApp> createState() => _HiveDemoAppState();
}

class _HiveDemoAppState extends State<HiveDemoApp> {
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
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  alignment: Alignment.centerLeft,
                  side: BorderSide(
                    color: Colors.grey.shade500,
                    width: 1,
                  ),
                  minimumSize: const Size(500, 50)),
              child: const Text(
                'Enter your task',
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Button(
                backgroundColor: const Color.fromARGB(255, 132, 83, 218),
                txt: 'Done'),
            const SizedBox(
              height: 10,
            ),
            Button(backgroundColor: Colors.grey, txt: 'Remove'),
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
            ContainerList(),
          ],
        ),
      ),
    );
  }
}
