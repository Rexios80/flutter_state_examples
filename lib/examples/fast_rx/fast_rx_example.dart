import 'package:fast_ui/fast_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_examples/examples/counter_widget.dart';

class FastRxExample extends StatelessWidget with CounterWidget {
  FastRxExample({super.key});

  @override
  final title = 'fast_rx';

  final counter = 0.rx;

  @override
  void increment() => counter.value++;

  @override
  Widget get builder {
    return FastBuilder(() => Text('${counter.value}'));
  }
}
