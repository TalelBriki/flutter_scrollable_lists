import 'package:flutter/cupertino.dart';
import 'package:flutter_scroll_performance_lab/widgets/list_item.dart';

class ShrinkWrapTab extends StatelessWidget {
  const ShrinkWrapTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('ListView.builder with shrinkWrap: true inside Column'),
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 500,
            itemBuilder: (context, index) => ListItem(index: index,),
          ),
        ],
      ),
    );
  }
}