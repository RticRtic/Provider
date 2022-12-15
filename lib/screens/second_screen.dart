import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_managment/providers/shopping_cart_provider.dart';
import 'home_screen.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "${context.watch<ShoppingCart>().count} products in Shoppingcart"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("This is value comes from the first page: "),
            const Count(),
            const Padding(padding: EdgeInsets.all(10.0)),
            Text("${context.watch<ShoppingCart>().cart}"),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              context.read<ShoppingCart>().addItem("bread");
            },
            child: const Icon(Icons.add),
          ),
          const SizedBox(
            width: 10.0,
          ),
          FloatingActionButton(
            onPressed: () {
              context.read<ShoppingCart>().removeBread();
            },
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
