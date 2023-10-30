import 'package:flutter/material.dart';
import 'package:flutter_state_examples/counter_widget.dart';
import 'package:get/state_manager.dart';

class GetXExample extends StatelessWidget with CounterWidget {
  GetXExample({super.key});

  @override
  final title = 'GetX';

  final count = 0.obs;

  @override
  Widget build(BuildContext context) {
    return buildCounter(
      buildCount: (context) => Obx(() => Text('${count.value}')),
      increment: (context) => count.value++,
    );
  }
}

/*
Pros:
- Takes very little code to get working
- Builders are easy to use and facilitate proper placement

Cons:
- Not as explicit as other solutions
- Have to unwrap primitives
*/
