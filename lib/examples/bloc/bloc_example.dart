import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_state_examples/counter_widget.dart';

// Need to make many classes just for a simple widget
class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(const CounterStateWithValue(0)) {
    on<IncrementEvent>((event, emit) {
      // Need to check state type everywhere
      final tempState = state;
      if (tempState is! CounterStateWithValue) throw Exception();
      emit(CounterStateWithValue(tempState.count + 1));
    });
  }
}

// Need to make a class for every possible event
abstract class CounterEvent {
  const CounterEvent();
}

class IncrementEvent extends CounterEvent {
  const IncrementEvent();
}

// Need to make a class for every possible state
abstract class CounterState {
  const CounterState();
}

class CounterStateWithValue extends CounterState {
  final int count;

  const CounterStateWithValue(this.count);
}

class BlocExample extends StatelessWidget with CounterWidget {
  const BlocExample({super.key});

  @override
  final title = 'Bloc';

  @override
  Widget build(BuildContext context) {
    // Bloc adds a lot of clutter to the widget tree
    return BlocProvider(
      create: (context) => CounterBloc(),
      child: buildCounter(
        // BlocBuilders are very verbose which leads to developers wanting to move
        // them up the widget tree. Ideally BlocBuilders should be as close as
        // possible to the components that rely on them for performance reasons.
        buildCount: (context) => BlocBuilder<CounterBloc, CounterState>(
          builder: (context, state) {
            // Must check state type everywhere
            if (state is! CounterStateWithValue) return const SizedBox.shrink();
            return Text('${state.count}');
          },
        ),
        increment: (context) =>
            context.read<CounterBloc>().add(const IncrementEvent()),
      ),
    );
  }
}
