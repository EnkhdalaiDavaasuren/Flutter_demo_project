import 'package:flutter/material.dart';

class StateManagementDemo extends StatelessWidget {
  const StateManagementDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Widgets and Layout')),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Stack(
              children: [
                Container(
                color: Colors.blue,
                width: 200,
                height: 200,  
                ),
                Text("0")
              ]
            ),
            const SizedBox(height: 20),
            OutlinedButton(onPressed: (){}, child: Text("Change Color")),
            const SizedBox(height: 20),
            OutlinedButton(onPressed: (){}, child: Text("Change Text")),
            const SizedBox(height: 20),
          ],
        ),
      ),
      );
}}