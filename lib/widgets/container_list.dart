import 'package:flutter/material.dart';

class ContainerList extends StatefulWidget {
  const ContainerList({super.key});

  @override
  State<ContainerList> createState() => _ContainerListState();
}

class _ContainerListState extends State<ContainerList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 380,
      width: MediaQuery.sizeOf(context).width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
            border: Border.all(
          color: Colors.grey,
          width: 1.5, 
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [

          ],
        ),
      ),
    );
  }
}