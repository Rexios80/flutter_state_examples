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
  CubitExample({super.key});

  @override
  final title = 'Cubit';

  final counterCubit = CounterCubit();

  @override
  void increment() => counterCubit.increment();

  @override
  Widget get builder {
    return BlocProvider.value(
      value: counterCubit,
      // Still need to use verbose BlocBuilder
      child: BlocBuilder<CounterCubit, CounterState>(
        builder: (context, state) {
          return Text('${state.count}');
        },
      ),
    );
  }
}
