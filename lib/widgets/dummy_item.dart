import 'package:flutter/material.dart';
import 'package:shopping_list_app/models/grocery.dart';

class GroceryListWidget extends StatelessWidget {
  const GroceryListWidget(
      {super.key,
      required this.index,
      required this.groceryItems,
      required this.item_remover});

  final int index;
  final List<GroceryItem> groceryItems;
  final void Function(GroceryItem item) item_remover;

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: ValueKey(groceryItems[index].id),
      onDismissed: (direction) {
        item_remover(groceryItems[index]);
      },
      child: ListTile(
        title: Text(groceryItems[index].name),
        leading: Icon(Icons.square, color: groceryItems[index].category.color),
        trailing: Text(groceryItems[index].quantity.toString()),
      ),
    );
  }
}
