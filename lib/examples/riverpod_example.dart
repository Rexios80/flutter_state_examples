import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_state_examples/counter_widget.dart';

class RiverpodExample extends StatelessWidget {
  const RiverpodExample({super.key});

  @override
  Widget build(BuildContext context) {
    return const ProviderScope(child: _RiverpodExample());
  }
}

class _RiverpodExample extends ConsumerStatefulWidget {
  const _RiverpodExample({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _RiverpodExampleState();
}

final counterProvider = StateProvider((ref) => 0);

class _RiverpodExampleState extends ConsumerState<_RiverpodExample>
    with CounterWidget {
  @override
  final title = 'Riverpod';

  @override
  void increment() {
    ref.read(counterProvider.notifier).state++;
  }

  @override
  Widget get builder {
    return Consumer(
      builder: (context, ref, _) {
        final count = ref.watch(counterProvider);
        return Text('$count');
      },
    );
  }
}

// This actually cannot be written as a ConsumerWidget since the build method
// is different

// build(BuildContext context, WidgetRef ref) {}