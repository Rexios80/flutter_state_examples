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
      context: context,
      buildCount: (context) => Obx(() => Text('${count.value}')),
      increment: (context) => count.value++,
    );
  }
}
