import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[800],
        appBar: AppBar(
          title: const Text(
            'Your Grocies',
            style: TextStyle(color: Colors.white, fontSize: 26),
          ),
          backgroundColor: Colors.grey[600],
        ),
        body: Container(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                  child: Container(
                    width: 18,
                    height: 18,
                    color: Colors.blue,
                  ),
                ),
                const Text(
                  'Milk',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
                const Spacer(),
                const Text(
                  '1',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                  child: Container(
                    width: 18,
                    height: 18,
                    color: Colors.green,
                  ),
                ),
                const Text(
                  'Bananas',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
                const Spacer(),
                const Text(
                  '3',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                  child: Container(
                    width: 18,
                    height: 18,
                    color: Colors.red,
                  ),
                ),
                const Text(
                  'Apples',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
                const Spacer(),
                const Text(
                  '8',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        )));
  }
}
