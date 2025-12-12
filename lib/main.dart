import 'package:flutter/material.dart';
import 'package:flutter_3d_controller/flutter_3d_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MonzaPOC(),
    );
  }
}

class MonzaPOC extends StatefulWidget {
  const MonzaPOC({super.key});

  @override
  State<MonzaPOC> createState() => _MonzaPOCState();
}

class _MonzaPOCState extends State<MonzaPOC> {
  final Flutter3DController _controller = Flutter3DController();

  @override
  void initState() {
    super.initState();

    // when model is loaded, start auto rotation
    _controller.onModelLoaded.addListener(() {
      if (_controller.onModelLoaded.value) {
        _controller.startRotation(rotationSpeed: 15); // deg/sec
        // optional: set a nicer camera orbit
        _controller.setCameraOrbit(30, 30, 5); // theta, phi, radius
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Flutter3DViewer(
          src: 'assets/models/mclaren.glb',
          controller: _controller,
          progressBarColor: Colors.white,
        ),
      ),
    );
  }
}