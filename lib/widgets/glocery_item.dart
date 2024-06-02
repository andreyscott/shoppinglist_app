import 'package:flutter/material.dart';
import 'package:shoppinglist_app/data/dummy_items.dart';
import 'package:shoppinglist_app/widgets/new_item.dart';

class GloceryList extends StatefulWidget {
  const GloceryList({super.key});

  @override
  State<GloceryList> createState() => _GloceryListState();
}

class _GloceryListState extends State<GloceryList> {
  void addItem() {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => const NewItem(),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Groceries'),
        actions: [
          IconButton(onPressed: addItem, icon: const Icon(Icons.add)),
        ],
      ),
      body: ListView.builder(
          itemCount: groceryItems.length,
          itemBuilder: (context, index) => ListTile(
                title: Text(groceryItems[index].name),
                leading: Container(
                  width: 24,
                  height: 24,
                  color: groceryItems[index].category.color,
                ),
                trailing: Text(groceryItems[index].quantity.toString()),
              )),
    );
  }
}
