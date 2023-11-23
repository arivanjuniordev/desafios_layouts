import 'package:flutter/material.dart';

class CustomItemSelect extends StatelessWidget {
  final String icon;
  final String title;
  final bool select;
  final double height;
  final double width;
  final String text;
  final double sizeIconHeight;
  final double sizeIconWidth;
  final Color backgroundColor;
  final Color selectColor;

  const CustomItemSelect({
    super.key,
    this.icon = 'assets/icons8-voltar-24.png',
    this.title = 'title',
    this.select = false,
    this.height = 50,
    this.width = 50,
    this.text = 'text',
    this.sizeIconHeight = 10,
    this.sizeIconWidth = 10,
    this.backgroundColor = Colors.red,
    this.selectColor = Colors.yellow,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(5),
        border: select
            ? Border.all(
                color: selectColor,
                width: 2,
              )
            : null,
      ),
      child: Row(
        children: [
          Image.asset(
            icon,
            height: sizeIconHeight,
            width: sizeIconWidth,
          ),
          Text(text),
        ],
      ),
    );
  }
}
