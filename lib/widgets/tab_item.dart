import 'package:flutter/material.dart';

class TabItem extends StatelessWidget {
  const TabItem({
    Key? key,
    required this.active,
    required this.icon,
  }) : super(key: key);

  final bool active;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: active == true ? Colors.black : Colors.white,
              width: 1,
            ),
          ),
        ),
        child: Icon(
          icon,
        ),
      ),
    );
  }
}
