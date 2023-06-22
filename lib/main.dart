import 'package:fast_ui/fast_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_examples/examples/fast_rx_composite.dart';
import 'package:flutter_state_examples/examples/fast_rx_example.dart';
import 'package:flutter_state_examples/examples/stateful_widget_example.dart';
import 'package:flutter_state_examples/examples/value_listenable_builder_example.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: FastNav.init(),
      home: Scaffold(
        appBar: AppBar(title: const Text('Flutter State Examples')),
        body: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            ElevatedButton(
              onPressed: () => FastNav.push(const StatefulWidgetExample()),
              child: const Text('StatefulWidget'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => FastNav.push(ValueListenableExample()),
              child: const Text('ValueListenable'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => FastNav.push(FastRxExample()),
              child: const Text('FastRx'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => FastNav.push(FastRxCompositeExample()),
              child: const Text('FastRx Composite'),
            ),
          ],
        ),
      ),
    );
  }
}
