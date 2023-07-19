import 'package:finaltest/pages/timeline_list.dart';
import 'package:flutter/material.dart';

class MainTab extends StatefulWidget {
  @override
  _MainTabState createState() => _MainTabState();
}

class _MainTabState extends State<MainTab>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildTabBar(),
        Expanded(child: _buildTabBarView()),
      ],
    );
  }

  Widget _buildTabBar() {
    return TabBar(
      controller: _tabController,
      labelColor: Colors.deepPurple,
      unselectedLabelColor: Colors.black45,
      indicatorColor : Colors.deepPurple,
      tabs: [
        Tab(
          child: Text('갤러리'),
        ),
        Tab(
            child: Text('타임라인'),
            ),
      ],
    );
  }

  Widget _buildTabBarView() {
    return TabBarView(
      controller: _tabController,

      children: [

        GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 10,
            crossAxisCount: 3,
            mainAxisSpacing: 10,
          ),
          itemCount: 42,
          itemBuilder: (context, index) {
            return Image.network(
                "https://picsum.photos/id/${index + 1}/200/200");
          },
        ),
        TimelineList()
      ],
    );
  }
}
