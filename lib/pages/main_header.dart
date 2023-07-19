import 'package:flutter/material.dart';

class MainHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      // 1
      children: [
        const SizedBox(width: 20),
        _buildHeaderPic(),
        const SizedBox(width: 20),
        _buildHeaderProfile(),
        const SizedBox(width: 20),
        _buildHeaderButton()
      ],
    );
  }

  Widget _buildHeaderPic() {
    return const SizedBox(
      width: 30,
      height: 30,
      child: CircleAvatar(
        backgroundImage: AssetImage("assets/avatar.png"),
      ),
    );
  }

  Widget _buildHeaderProfile() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "박상현",
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w700,
          ),
        ),
        Text(
          "반갑습니다. 함께 TODO해요!",
          style: TextStyle(
              fontSize: 15,
              color: Colors.black54
          ),
        ),
      ],
    );
  }
    Widget _buildHeaderButton() {
      return OutlinedButton(
          onPressed: (){},
          child: Text(
            "프로필 수정",
          style : TextStyle(color: Colors.black54)));
    }
}
