import 'package:flutter/material.dart';

class MenuCategoryCardWidget extends StatelessWidget {
  const MenuCategoryCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 165.0,
      height: 162,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            'assets/img_category_one.png',
          ),
        ),
      ),
      child: Column(
        children: const [Text('Data')],
      ),
    );
  }
}
