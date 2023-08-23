import 'package:flutter/material.dart';

class YellowScreen extends StatelessWidget {
  const YellowScreen({super.key});
  static const routePath = '/yellow';
  @override
  Widget build(BuildContext context) {
    print('📱 build YellowScreen ');
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Text('Yellow'),
      ),
    );
  }
}
