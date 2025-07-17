import 'package:flutter/material.dart';

class LifecycleListTab extends StatelessWidget {
  const LifecycleListTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 50,
      itemBuilder: (context, index) {
        return KeepAliveWrapper(
          keepAlive: index % 2 == 0,
          child: StatefulCounterItem(index: index),
        );
      },
    );
  }
}

class KeepAliveWrapper extends StatefulWidget {
  final Widget child;
  final bool keepAlive;

  const KeepAliveWrapper({
    super.key,
    required this.child,
    required this.keepAlive,
  });

  @override
  State<KeepAliveWrapper> createState() => _KeepAliveWrapperState();
}

class _KeepAliveWrapperState extends State<KeepAliveWrapper> with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => widget.keepAlive;

  @override
  void didUpdateWidget(covariant KeepAliveWrapper oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.keepAlive != widget.keepAlive) {
      updateKeepAlive();
    }
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return widget.child;
  }
}

class StatefulCounterItem extends StatefulWidget {
  final int index;
  const StatefulCounterItem({super.key, required this.index});

  @override
  State<StatefulCounterItem> createState() => _StatefulCounterItemState();
}

class _StatefulCounterItemState extends State<StatefulCounterItem> {
  int counter = 0;

  @override
  void initState() {
    super.initState();
    debugPrint('initState: ${widget.index}');
  }

  @override
  void dispose() {
    debugPrint('dispose: ${widget.index}');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('Item ${widget.index}'),
      subtitle: Text('Counter: $counter'),
      trailing: ElevatedButton(
        onPressed: () => setState(() => counter++),
        child: const Text('+'),
      ),
    );
  }
}
