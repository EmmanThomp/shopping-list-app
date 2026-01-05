import 'package:flutter/material.dart';
import 'package:shopping_list_app/models/grocery.dart';

class GroceryListWidget extends StatelessWidget {
  const GroceryListWidget(
      {super.key, required this.index, required this.groceryItems});

  final int index;
  final List<GroceryItem> groceryItems;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(groceryItems[index].name),
      leading: Icon(Icons.square, color: groceryItems[index].category.color),
      trailing: Text(groceryItems[index].quantity.toString()),
    );
  }
}
