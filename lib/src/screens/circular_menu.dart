import 'package:app_menucircular_bakapp/src/widgets/flowBoton_widget.dart';
import 'package:flutter/material.dart';

class CircularMenuWidget extends StatefulWidget {
  const CircularMenuWidget({super.key});

  @override
  State<CircularMenuWidget> createState() => _CircularMenuWidgetState();
}

class _CircularMenuWidgetState extends State<CircularMenuWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Speed Dial BakApps'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FlowButtonWidget(),
    );
  }
}
