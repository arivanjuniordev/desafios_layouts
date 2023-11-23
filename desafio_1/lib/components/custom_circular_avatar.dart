import 'package:flutter/material.dart';

class CustomCircularAvatar extends StatelessWidget {
  final double size;
  final Color color;
  final Widget widget;

  const CustomCircularAvatar({
    super.key,
    this.size = 100,
    this.color = Colors.red,
    this.widget = const Text('Avatar'),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(size),
      ),
      child: Center(child: widget),
    );
  }
}
