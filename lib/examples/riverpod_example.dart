import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_state_examples/counter_widget.dart';

class RiverpodExample extends ConsumerWidget with CounterWidget {
  RiverpodExample({super.key});

  @override
  final title = 'Riverpod';

  final counterProvider = StateProvider((ref) => 0);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ProviderScope(
      child: buildCounter(
        context: context,
        buildCount: (context) => Consumer(
          builder: (context, ref, _) {
            final count = ref.watch(counterProvider);
            return Text('$count');
          },
        ),
        increment: (context) => ref.read(counterProvider.notifier).state++,
      ),
    );
  }
}
