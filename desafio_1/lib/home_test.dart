import 'package:desafio_1/components/custom_circular_avatar.dart';
import 'package:desafio_1/components/custom_content.dart';
import 'package:desafio_1/components/custom_count_select.dart';
import 'package:desafio_1/components/custom_item_select.dart';
import 'package:desafio_1/components/custom_list_title.dart';
import 'package:flutter/material.dart';

class HomeTest extends StatelessWidget {
  const HomeTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: CustomCountSelect()),
    );
  }
}
