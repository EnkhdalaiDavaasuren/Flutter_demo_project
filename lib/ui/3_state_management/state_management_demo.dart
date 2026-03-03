import 'package:flutter/material.dart';
import 'package:flutter_demo/ui/3_state_management/state_manager.dart';

class StateManagementDemo extends StatefulWidget {
  const StateManagementDemo({super.key});

  @override
  State<StateManagementDemo> createState() => _StateManagementDemoState();
}

class _StateManagementDemoState extends State<StateManagementDemo> {
  final manager = StateManagementManager();


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
                  ValueListenableBuilder<Color>(
                    valueListenable: manager.colorNotifier,
                    builder: (context, color, child) {
                      return Container(
                        color: color,
                        width: 200,
                        height: 200,  
                        child: Center(child: ValueListenableBuilder(
                          valueListenable: manager.numberNotifier,
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
              OutlinedButton(onPressed: manager.ChangeColor, child: Text("Change Color")),
              const SizedBox(height: 20),
              OutlinedButton(onPressed: manager.ChangeText, child: Text("Change Text")),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
      );
    }
}