import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  final int index;
  const ListItem({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(child: Text('$index')),
      title: Text('Item $index'),
      subtitle: const Text('This is a performance test item.'),
      trailing: const Icon(Icons.arrow_forward_ios, size: 16),
    );
  }
}
