import 'package:dynamic_ogp_web_example/features/blue/blue_screen.dart';
import 'package:dynamic_ogp_web_example/features/pink/pink_screen.dart';
import 'package:dynamic_ogp_web_example/features/yellow/yellow_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static const routePath = '/';
  @override
  Widget build(BuildContext context) {
    print('📱 build HomeScreen ');
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                context.go(BlueScreen.routePath);
              },
              child: const Text('blue'),
            ),
            ElevatedButton(
              onPressed: () {
                context.go(PinkScreen.routePath);
              },
              child: const Text('pink'),
            ),
            ElevatedButton(
              onPressed: () {
                context.go(YellowScreen.routePath);
              },
              child: const Text('yellow'),
            ),
          ],
        ),
      ),
    );
  }
}
