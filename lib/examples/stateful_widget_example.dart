import 'package:flutter/material.dart';
import 'package:flutter_state_examples/counter_widget.dart';

class StatefulWidgetExample extends StatefulWidget with CounterWidget {
  const StatefulWidgetExample({super.key});

  @override
  final title = 'StatefulWidget';

  @override
  State<StatefulWidget> createState() => _StatefulWidgetExampleState();
}

class _StatefulWidgetExampleState extends State<StatefulWidgetExample> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return widget.buildCounter(
      buildCount: (context) => Text('$count'),
      increment: (context) => setState(() => count++),
    );
  }
}

/*
Pros:
- Built-in to Flutter
- Simple to use

Cons:
- Need 2 classes
- Have to explicitly call setState (might be a positive if you're into that)
*/
