import 'package:desafio_1/components/custom_count_select.dart';
import 'package:desafio_1/components/custom_item_select.dart';
import 'package:desafio_1/components/custom_list_title.dart';
import 'package:desafio_1/custom_colors.dart';
import 'package:desafio_1/item_list_entity.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final list = const [
    ItemListEntity(
      icon: 'assets/icons8-voltar-24.png',
      text: 'Body Weight',
      isSelect: true,
    ),
    ItemListEntity(
      icon: 'assets/icons8-voltar-24.png',
      text: 'Resistance Band',
      isSelect: false,
    ),
    ItemListEntity(
      icon: 'assets/icons8-voltar-24.png',
      text: 'Trap Bar',
      isSelect: true,
    ),
    ItemListEntity(
      icon: 'assets/icons8-voltar-24.png',
      text: 'Suspension',
      isSelect: true,
    ),
    ItemListEntity(
      icon: 'assets/icons8-voltar-24.png',
      text: 'Hammer',
      isSelect: false,
    ),
    ItemListEntity(
      icon: 'assets/icons8-voltar-24.png',
      text: 'Roll',
      isSelect: false,
    ),
    ItemListEntity(
      icon: 'assets/icons8-voltar-24.png',
      text: 'Roll2',
      isSelect: false,
    ),
    ItemListEntity(
      icon: 'assets/icons8-voltar-24.png',
      text: 'Roll3',
      isSelect: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: CustomColor.primary,
      body: Column(
        children: [
          SizedBox(height: size.height * 0.05),
          Container(
            color: CustomColor.primary,
            height: size.height * 0.2,
            width: size.width,
            child: Row(
              children: [
                SizedBox(width: size.width * 0.07),
                const Text(
                  'What\'s Your\nTitle Here?',
                  style: TextStyle(
                    fontSize: 32,
                    fontFamily: 'Thecountryblues6',
                    color: Colors.white,
                  ),
                ),
                const Spacer(),
                Image.asset('assets/icons8-voltar-24.png'),
                SizedBox(width: size.width * 0.07),
              ],
            ),
          ),
          Container(
            color: Colors.amber,
            height: size.height * 0.5,
            width: size.width,
            child: ListView.builder(
                itemCount: list.length,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  final entity = list[index];

                  if (index == 0) {
                    return CustomListTitle(
                      sizeAvatar: 40,
                      widthText: 200,
                      heightText: 70,
                      widgetAvatar: Image.asset('assets/icons8-avatar-94.png'),
                      text: 'Select the equipments which are available to you.',
                    );
                  }

                  return CustomItemSelect(
                    sizeIconHeight: 50,
                    sizeIconWidth: 50,
                    width: 200,
                    select: entity.isSelect,
                    text: entity.text,
                  );
                }),
          ),
          Container(
            color: CustomColor.primary,
            height: size.height * 0.2,
            width: size.width,
            child: Center(
              child: CustomCountSelect(
                width: 200,
                backgroundColor: Colors.amber,
                count: '3',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
