import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_state_examples/counter_widget.dart';
import 'package:mobx/mobx.dart';

part 'mobx_example.g.dart';

// ignore: library_private_types_in_public_api
class Counter = _Counter with _$Counter;

abstract class _Counter with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}

class MobXExample extends StatelessWidget with CounterWidget {
  MobXExample({super.key});

  @override
  final title = 'MobX';

  final counter = Counter();

  @override
  Widget build(BuildContext context) {
    return buildCounter(
      buildCount: (context) =>
          Observer(builder: (context) => Text('${counter.value}')),
      increment: (context) => counter.increment(),
    );
  }
}
