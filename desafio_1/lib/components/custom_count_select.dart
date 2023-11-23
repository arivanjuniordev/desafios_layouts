import 'package:desafio_1/components/custom_circular_avatar.dart';
import 'package:flutter/material.dart';

class CustomCountSelect extends StatelessWidget {
  final double height;
  final double width;
  final String count;
  final String icon;
  final double size;
  final String text;
  final Color backgroundColor;

  const CustomCountSelect({
    super.key,
    this.height = 50,
    this.width = 100,
    this.count = '1',
    this.icon = 'assets/icons8-voltar-24.png',
    this.size = 20,
    this.text = 'text',
    this.backgroundColor = Colors.red,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Spacer(),
          CustomCircularAvatar(
            size: size,
            widget: Text(count),
          ),
          const SizedBox(width: 6),
          Text(text),
          Image.asset(icon),
          const Spacer(),
        ],
      ),
    );
  }
}
