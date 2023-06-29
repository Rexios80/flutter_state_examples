import 'package:flutter/material.dart';
import 'package:flutter_state_examples/examples/counter_widget.dart';
import 'package:get/state_manager.dart';

class GetXExample extends StatelessWidget with CounterWidget {
  GetXExample({super.key});

  @override
  final title = 'GetX';

  final counter = 0.obs;

  @override
  void increment() => counter.value++;

  @override
  Widget get builder {
    return Obx(() => Text('${counter.value}'));
  }
}
