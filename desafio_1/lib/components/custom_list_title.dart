import 'package:desafio_1/components/custom_circular_avatar.dart';
import 'package:desafio_1/components/custom_content.dart';
import 'package:flutter/material.dart';

class CustomListTitle extends StatelessWidget {
  final double sizeAvatar;
  final Widget widgetAvatar;
  final String text;
  final double heightText;
  final double widthText;

  const CustomListTitle({
    super.key,
    this.sizeAvatar = 50,
    required this.widgetAvatar,
    this.text = 'text',
    this.heightText = 20,
    this.widthText = 100,
  });

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: CustomCircularAvatar(
              color: Colors.white,
              size: sizeAvatar,
              widget: widgetAvatar,
            ),
          ),
          const SizedBox(
            width: 4,
          ),
          CustonContent(
            height: heightText,
            width: widthText,
            text: text,
          ),
        ],
      ),
    );
  }
}
