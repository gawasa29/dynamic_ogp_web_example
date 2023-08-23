import 'package:flutter/material.dart';

class BlueScreen extends StatelessWidget {
  const BlueScreen({super.key});
  static const routePath = '/blue';
  @override
  Widget build(BuildContext context) {
    print('📱 build BlueScreen ');
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Text('Blue'),
      ),
    );
  }
}
