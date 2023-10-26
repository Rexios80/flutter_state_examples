import 'package:flutter/material.dart';

mixin CounterWidget on Widget {
  String get title;

  Widget buildCounter({
    required WidgetBuilder buildCount,
    required void Function(BuildContext context) increment,
  }) {
    return Builder(
      builder: (context) => Scaffold(
        appBar: AppBar(title: Text(title)),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('You have pushed the button this many times:'),
              DefaultTextStyle(
                style: Theme.of(context).textTheme.headlineMedium!,
                child: buildCount(context),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => increment(context),
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
