import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_managment/providers/counter_provider.dart';
import 'package:provider_state_managment/providers/shopping_cart_provider.dart';
import 'package:provider_state_managment/screens/home_screen.dart';
import 'package:provider_state_managment/screens/second_screen.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => Counter()),
      ChangeNotifierProvider(create: (_) => ShoppingCart()),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => const Home(),
        "/secondScreen": (context) => const SecondScreen(),
      },
    );
  }
}
