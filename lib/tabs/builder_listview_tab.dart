import 'package:flutter/cupertino.dart';
import 'package:flutter_scroll_performance_lab/widgets/list_item.dart';

class BuilderListViewTab extends StatelessWidget {
  const BuilderListViewTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 500,
      itemBuilder: (context, index) => ListItem(index: index,),
    );
  }
}