// container_list.dart
import 'package:flutter/material.dart';

class ContainerList extends StatelessWidget {
  final List<String> taskList;
  final Function(int) onRemove; 

  const ContainerList({
    super.key,
    required this.taskList,
    required this.onRemove, 
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 370,
      width: MediaQuery.sizeOf(context).width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: Colors.grey, width: 1.5),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: List.generate(
            taskList.length,
            (index) => ListTile(
              title: Text(taskList[index]),
              trailing: IconButton(
                icon: const Icon(Icons.delete, color: Colors.grey),
                onPressed: () =>
                    onRemove(index), 
              ),
            ),
          ),
        ),
      ),
    );
  }
}
