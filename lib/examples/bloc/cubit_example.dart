import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_state_examples/counter_widget.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(const CounterState(0));

  // Simpler to perform actions on state
  void increment() => emit(CounterState(state.count + 1));
}

// Only one state class
class CounterState {
  final int count;

  const CounterState(this.count);
}

class CubitExample extends StatelessWidget with CounterWidget {
  const CubitExample({super.key});

  @override
  final title = 'Cubit';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: buildCounter(
        context: context,
        buildCount: (context) => BlocBuilder<CounterCubit, CounterState>(
          builder: (context, state) {
            return Text('${state.count}');
          },
        ),
        increment: (context) => context.read<CounterCubit>().increment(),
      ),
    );
  }
}
