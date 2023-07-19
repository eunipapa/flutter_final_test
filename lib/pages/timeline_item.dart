import 'package:flutter/material.dart';

class TimelineItem extends StatelessWidget {
  int nIndex = 0;

  final List<String> days = <String>['18', '19', '20', '21', '22', '23', '24'];
  final List<String> dates = <String>[
    '일요일',
    '월요일',
    '화요일',
    '수요일',
    '목요일',
    '금요일',
    '토요일'
  ];
  final List<String> messages = <String>[
    '파이널 프로젝트마무리!',
    '하브루타 노트 작성하기',
    '블로그정리하기',
    '플러터 라이브러리 공부 및 블로그정리',
    'PPT 제작',
    'TODOFRIENDS 앱영상 촬영하기',
    '팀원들이랑일정 공유하기',
  ];

  TimelineItem(int index) {
    nIndex = index;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      // 1
      children: [
        const SizedBox(width: 20),
        _buildDate(),
        const SizedBox(width: 20),
        _buildMessage()
      ],
    );
  }


  Widget _buildDate() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          days[nIndex],
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w700,
          ),
        ),
        Text(
          dates[nIndex],
          style: TextStyle(fontSize: 15, color: Colors.black54),
        ),
      ],
    );
  }

  Widget _buildMessage() {
    return SizedBox(
        height: 50,
        width: 280,
        child: Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.black12, borderRadius: BorderRadius.circular(10.0)),
          child : Text(messages[nIndex]),
        ));
  }
}
