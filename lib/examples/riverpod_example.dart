import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_state_examples/counter_widget.dart';

class RiverpodExample extends StatelessWidget with CounterWidget {
  const RiverpodExample({super.key});

  @override
  final title = 'Riverpod';

  @override
  Widget build(BuildContext context) {
    return ProviderScope(child: _RiverpodExample());
  }
}

class _RiverpodExample extends ConsumerWidget with CounterWidget {
  @override
  final title = 'Riverpod';

  final counterProvider = StateProvider((ref) => 0);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return buildCounter(
      buildCount: (context) => Consumer(
        builder: (context, ref, _) {
          final count = ref.watch(counterProvider);
          return Text('$count');
        },
      ),
      increment: (context) => ref.read(counterProvider.notifier).state++,
    );
  }
}

/*
Pros:
- Idk honestly

Cons:
- Custom widget solution (not as portable)
- The most verbose reactive solution possible
*/
