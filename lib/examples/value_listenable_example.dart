import 'package:flutter/material.dart';
import 'package:flutter_state_examples/counter_widget.dart';

class ValueListenableExample extends StatelessWidget with CounterWidget {
  ValueListenableExample({super.key});

  @override
  final title = 'ValueListenable';

  final counter = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return buildCounter(
      buildCount: (context) => ValueListenableBuilder(
        valueListenable: counter,
        builder: (context, value, child) => Text('$value'),
      ),
      increment: (context) => counter.value++,
    );
  }
}
