import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_scroll_performance_lab/widgets/list_item.dart';

class SliverListTab extends StatelessWidget {
  const SliverListTab({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverAppBar(
          surfaceTintColor:Colors.blue,
          pinned: true,
          expandedHeight: 100,
          flexibleSpace: FlexibleSpaceBar(title: Text('Sliver List')),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
                (context, index) => ListItem(index: index,),
            childCount: 500,
          ),
        ),
      ],
    );
  }
}