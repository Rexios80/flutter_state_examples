import 'package:flutter/material.dart';

mixin CounterWidget {
  String get title;
  void increment();
  Widget get builder;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('You have pushed the button this many times:'),
            DefaultTextStyle(
              style: Theme.of(context).textTheme.headlineMedium!,
              child: builder,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: increment,
        child: const Icon(Icons.add),
      ),
    );
  }
}
