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
  
  // int colorIndex = 0;
  final colorIndexNotifier = ValueNotifier(0);

  final numberNotifier = ValueNotifier<int>(1);

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
                  ValueListenableBuilder(
                    valueListenable: colorIndexNotifier,
                    builder: (context, colorIndex, child) {
                      return Container(
                        color: colors[colorIndex],
                        width: 200,
                        height: 200,  
                        child: Center(child: ValueListenableBuilder(
                          valueListenable: numberNotifier,
                          builder: (context, number, child) {
                            return Text("$number", style: TextStyle(fontSize: 50),);
                          }
                        )),
                      );
                    }
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
      colorIndexNotifier.value++;
      colorIndexNotifier.value = colorIndexNotifier.value % colors.length;
    }

    void ChangeText() {
      numberNotifier.value++;
    }
}