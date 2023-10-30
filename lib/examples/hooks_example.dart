import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_state_examples/counter_widget.dart';

class HooksExample extends HookWidget with CounterWidget {
  const HooksExample({super.key});

  @override
  final title = 'Hooks';

  @override
  Widget build(BuildContext context) {
    final count = useState(0);

    return buildCounter(
      buildCount: (context) => Text('${count.value}'),
      increment: (context) => count.value++,
    );
  }
}

/*
Pros:
- Similar to other frameworks
- Little code

Cons:
- Hooks can only be used in the build method
- Have to unwrap primitives
*/
