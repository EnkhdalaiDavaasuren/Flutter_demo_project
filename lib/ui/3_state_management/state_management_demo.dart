import 'package:flutter/material.dart';

class StateManagementDemo extends StatefulWidget {
  const StateManagementDemo({super.key});

  @override
  State<StateManagementDemo> createState() => _StateManagementDemoState();
}

class _StateManagementDemoState extends State<StateManagementDemo> {
  final colors = [
    Colors.blue, 
    Colors.yellow,
    Colors.teal,
    Colors.amber,
    Colors.deepPurple,
    Colors.lime,
    Colors.grey,
    ];
  
  int colorIndex = 0;

  int textIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Widgets and Layout')),
      body: Center(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 20),
              Stack(
                children: [
                  Container(
                    color: colors[colorIndex],
                    width: 200,
                    height: 200,  
                    child: Center(child: Text("$textIndex", style: TextStyle(fontSize: 50),)),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              OutlinedButton(onPressed: ChangeColor, child: Text("Change Color")),
              const SizedBox(height: 20),
              OutlinedButton(onPressed: ChangeText, child: Text("Change Text")),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
      );
    }

    void ChangeColor() {
      setState(() {
        colorIndex++;
        colorIndex = colorIndex % colors.length;
      });
    }

    void ChangeText() {
      setState(() {
        textIndex++;
      });
    }
}