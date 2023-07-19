import 'package:finaltest/pages/timeline_item.dart';
import 'package:flutter/material.dart';

import 'main_header.dart';

class TimelineList extends StatelessWidget {
  final int nIndexCount = 7;

  @override
  Widget build(BuildContext context) {
    return buildListView();
  }

  ListView buildListView() {
    return ListView.separated(
    padding: const EdgeInsets.all(8),
    itemCount: nIndexCount,
    itemBuilder: (BuildContext context, int index) {
      return Row(
        //padding: const EdgeInsets.all(16),
        children: [
          TimelineItem(index),
        ],
      );
    },
    separatorBuilder: (BuildContext context, int index) => const Divider(),
  );
  }
}
