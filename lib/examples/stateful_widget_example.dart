import 'package:flutter/material.dart';
import 'package:flutter_state_examples/counter_widget.dart';

class StatefulWidgetExample extends StatefulWidget {
  const StatefulWidgetExample({super.key});

  @override
  State<StatefulWidget> createState() => _StatefulWidgetExampleState();
}

class _StatefulWidgetExampleState extends State<StatefulWidgetExample>
    with CounterWidget {
  @override
  final title = 'StatefulWidget';

  int counter = 0;

  @override
  void increment() => setState(() => counter++);

  @override
  Widget get builder {
    return Text('$counter');
  }
}
