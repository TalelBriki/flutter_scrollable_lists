import 'package:flutter/cupertino.dart';
import '../widgets/list_item.dart';

class StaticListViewTab extends StatelessWidget {
  const StaticListViewTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: List.generate(500, (index) => ListItem(index: index,)),
    );
  }
}

