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

/*
Pros:
- Takes very little code to get working
- FastBuilders are easy to use and facilitate proper placement
- Useful extensions such as fast_rx_persistence and fast_rx_composite

Cons:
- Not as explicit as other solutions
- Have to unwrap primitives
*/
