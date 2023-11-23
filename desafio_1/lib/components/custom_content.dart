import 'package:flutter/material.dart';

class CustonContent extends StatelessWidget {
  final double height;
  final double width;
  final Color color;
  final String text;

  const CustonContent({
    super.key,
    this.height = 25,
    this.width = 50,
    this.color = Colors.red,
    this.text = 'Test Text',
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Center(child: Text(text)),
    );
  }
}
