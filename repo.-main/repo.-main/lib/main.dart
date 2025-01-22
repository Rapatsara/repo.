import 'package:flutter/material.dart';
import 'package:iot_sau_first_project/views/welcome_ui.dart';

void main() {
  runApp(
    //
    IoTSAUFirst(),
  );
}

//+++++++++++++++++++++++++++++++++++++++++++++++++++++
class IoTSAUFirst extends StatefulWidget {
  const IoTSAUFirst({super.key});

  @override
  State<IoTSAUFirst> createState() => _IoTSAUFirstState();
}

class _IoTSAUFirstState extends State<IoTSAUFirst>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomeUi(),
    );
  }
}
