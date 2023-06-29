import 'package:flutter/material.dart';
import 'package:flutter_state_examples/examples/counter_widget.dart';

class ValueListenableExample extends StatelessWidget with CounterWidget {
  ValueListenableExample({super.key});

  @override
  final title = 'ValueListenable';

  final counter = ValueNotifier(0);

  @override
  void increment() => counter.value++;

  @override
  Widget get builder {
    return ValueListenableBuilder(
      valueListenable: counter,
      builder: (context, value, child) => Text('$value'),
    );
  }
}
