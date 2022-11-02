import 'package:flutter/material.dart';

class TestComponent extends StatelessWidget {
  const TestComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Test Component', style: TextStyle(fontWeight: FontWeight.bold),),
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.settings))
        ],
      ),
      body: Center(
        child: Column(
          children: [
            const Text('Test Component', style: TextStyle(fontWeight: FontWeight.bold)),
            ElevatedButton(onPressed: (){}, child: const Text('Button'),)
          ],
        ),
      ),
    );
  }
}