import 'package:fast_rx_shared_preferences/fast_rx_shared_preferences.dart';
import 'package:fast_ui/fast_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_examples/examples/bloc/bloc_example.dart';
import 'package:flutter_state_examples/examples/bloc/cubit_example.dart';
import 'package:flutter_state_examples/examples/fast_rx/fast_rx_composite_example.dart';
import 'package:flutter_state_examples/examples/fast_rx/fast_rx_example.dart';
import 'package:flutter_state_examples/examples/fast_rx/fast_rx_persistence_example.dart';
import 'package:flutter_state_examples/examples/getx_example.dart';
import 'package:flutter_state_examples/examples/mobx/mobx_example.dart';
import 'package:flutter_state_examples/examples/riverpod_example.dart';
import 'package:flutter_state_examples/examples/stateful_widget_example.dart';
import 'package:flutter_state_examples/examples/value_listenable_example.dart';

void main() async {
  await FastRxSharedPreferences.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: FastNav.init(),
      home: Scaffold(
        appBar: AppBar(title: const Text('Flutter State Examples')),
        body: ListView(
          padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
          children: [
            const StatefulWidgetExample(),
            const RiverpodExample(),
            BlocExample(),
            CubitExample(),
            ValueListenableExample(),
            FastRxExample(),
            FastRxCompositeExample(),
            FastRxPersistenceExample(),
            GetXExample(),
            MobXExample(),
          ]
              .expand(
                (e) => [
                  ElevatedButton(
                    onPressed: () => FastNav.push(e),
                    child: Text(e.runtimeType.toString()),
                  ),
                  const SizedBox(height: 16),
                ],
              )
              .toList(),
        ),
      ),
    );
  }
}
