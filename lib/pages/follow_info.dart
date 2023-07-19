import 'package:flutter/material.dart';

class FollowInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 100,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.black12, borderRadius: BorderRadius.circular(10.0)),
        child: Row(
          children: [
            Flexible(
                child: Container(
                    alignment: Alignment.center,
                    child: _buildInfo('팔로잉', '150')),
                flex: 5),
            Flexible(flex: 0, child: Container(child: _buildLine())),
            Flexible(
                child: Container(
                    alignment: Alignment.center,
                    child: _buildInfo('팔로워', '999')),
                flex: 5),
          ],
        ),
      ),
    );
  }

  Widget _buildInfo(String title, String count) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 15),
        ),
        const SizedBox(height: 2),
        Text(
          count,
          style: const TextStyle(fontSize: 15),
        ),
      ],
    );
  }

  Widget _buildLine() {
    return Container(width: 2, height: 60, color: Colors.white);
  }
}
