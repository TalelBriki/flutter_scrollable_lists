import 'package:flutter/material.dart';
import 'package:flutter_scroll_performance_lab/tabs/builder_listview_tab.dart';
import 'package:flutter_scroll_performance_lab/tabs/life_cycle_tab.dart';
import 'package:flutter_scroll_performance_lab/tabs/shrink_wrap_tab.dart';
import 'package:flutter_scroll_performance_lab/tabs/sliver_list_tab.dart';
import 'package:flutter_scroll_performance_lab/tabs/static_list_view_tab.dart';

class ScrollableComparisonApp extends StatelessWidget {
  const ScrollableComparisonApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //showPerformanceOverlay: true, // 🔍 Shows FPS and layer performance
      title: 'Scrollable Widgets Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const ScrollableDemoHome(),
    );
  }
}

class ScrollableDemoHome extends StatelessWidget {
  const ScrollableDemoHome({super.key});

  @override
  Widget build(BuildContext context) {
    double itemWidth=MediaQuery.of(context).size.width/5;

    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Scrollable Widget Comparison'),
          bottom: TabBar(
            textScaler: const TextScaler.linear(0.7),
            labelPadding: const EdgeInsets.all(2),
            tabs: [
              SizedBox(width: itemWidth, child: const Tab(text: 'Static ListView')),
              SizedBox(width: itemWidth, child: const Tab(text: 'ListView.builder')),
               SizedBox(width: itemWidth, child: Tab(text: 'SliverList')),
               SizedBox(width: itemWidth, child: Tab(text: 'ShrinkWrap')),
               SizedBox(width: itemWidth, child: Tab(text: 'Lifecycle Example')),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            StaticListViewTab(),
            BuilderListViewTab(),
            SliverListTab(),
            ShrinkWrapTab(),
            LifecycleListTab()
          ],
        ),
      ),
    );
  }
}
