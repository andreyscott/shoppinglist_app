import 'package:flutter/material.dart';

class GlossoryItem extends StatelessWidget {
  const GlossoryItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('testing')),
      body: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) => const ListTile(
                title: Text('random generating value'),
              )),
    );
  }
}
