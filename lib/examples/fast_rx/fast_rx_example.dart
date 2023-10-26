import 'package:fast_ui/fast_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_examples/counter_widget.dart';

class FastRxExample extends StatelessWidget with CounterWidget {
  FastRxExample({super.key});

  @override
  final title = 'fast_rx';

  final count = 0.rx;

  @override
  Widget build(BuildContext context) {
    return buildCounter(
      buildCount: (context) => FastBuilder(() => Text('${count.value}')),
      increment: (context) => count.value++,
    );
  }
}
