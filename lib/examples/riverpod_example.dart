import 'package:flutter/material.dart';
import 'package:flutter_state_examples/examples/counter_widget.dart';

class RiverpodExample extends StatelessWidget with CounterWidget {
  const RiverpodExample({super.key});

  @override
  final title = 'Riverpod';

  @override
  void increment() {
    // TODO: implement increment
  }

  @override
  // TODO: implement builder
  Widget get builder => throw UnimplementedError();
}
