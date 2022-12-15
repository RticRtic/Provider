import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_managment/providers/counter_provider.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed("/secondScreen");
              },
              child: const Icon(Icons.shopping_cart),
            )
          ],
          centerTitle: true,
          title: Text("Counter ${context.watch<Counter>().count}"),
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text("You Pressed the button this many times: "),
              SizedBox(
                height: 10.0,
              ),
              Count(),
            ],
          ),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: () {
                context.read<Counter>().decrement();
              },
              child: const Icon(Icons.remove),
            ),
            const SizedBox(
              width: 10.0,
            ),
            FloatingActionButton(
              onPressed: () {
                context.read<Counter>().reset();
              },
              child: const Icon(Icons.exposure_zero),
            ),
            const SizedBox(
              width: 10.0,
            ),
            FloatingActionButton(
              onPressed: () {
                context.read<Counter>().increment();
              },
              child: const Icon(Icons.add),
            )
          ],
        ));
  }
}

class Count extends StatelessWidget {
  const Count({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "${context.watch<Counter>().count}",
      style: const TextStyle(
        fontSize: 30.0,
      ),
    );
  }
}
