import 'package:flutter/material.dart';

class PinkScreen extends StatelessWidget {
  const PinkScreen({super.key});
  static const routePath = '/pink';
  @override
  Widget build(BuildContext context) {
    print('📱 build PinkScreen ');
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Text('Pink'),
      ),
    );
  }
}
