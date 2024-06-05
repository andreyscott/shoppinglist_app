import 'package:flutter/material.dart';
import 'package:shoppinglist_app/models/grocery_item.dart';
import 'package:shoppinglist_app/widgets/new_item.dart';

class GloceryList extends StatefulWidget {
  const GloceryList({super.key});

  @override
  State<GloceryList> createState() => _GloceryListState();
}

class _GloceryListState extends State<GloceryList> {
  final List<GroceryItem> _groceryItems = [];

  void addItem() async {
    final newItem = await Navigator.of(context).push<GroceryItem>(
      MaterialPageRoute(
        builder: (ctx) => const NewItem(),
      ),
    );

    if (newItem == null) {
      return;
    }

    setState(() {
      _groceryItems.add(newItem);
    });
  }

  void _removeitem(item) {
    setState(() {
      _groceryItems.remove(item);
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget content = const Center(
        child: Text(
      'There is no item here',
      style: TextStyle(fontSize: 24, color: Colors.red),
    ));

    if (_groceryItems.isNotEmpty) {
      content = ListView.builder(
          itemCount: _groceryItems.length,
          itemBuilder: (context, index) => Dismissible(
                onDismissed: (direction) {
                  _removeitem(_groceryItems[index]);
                },
                key: ValueKey(_groceryItems[index].id),
                child: ListTile(
                  title: Text(_groceryItems[index].name),
                  leading: Container(
                    width: 24,
                    height: 24,
                    color: _groceryItems[index].category.color,
                  ),
                  trailing: Text(_groceryItems[index].quantity.toString()),
                ),
              ));
    }
    return Scaffold(
        appBar: AppBar(
          title: const Text('Your Groceries'),
          actions: [
            IconButton(onPressed: addItem, icon: const Icon(Icons.add)),
          ],
        ),
        // body:
        body: content);
  }
}
