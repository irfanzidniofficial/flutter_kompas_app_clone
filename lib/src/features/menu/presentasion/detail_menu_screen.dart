import 'package:flutter/material.dart';
import 'package:flutter_kompas_app_clone/src/common_widgets/news_card.dart';

class DetailMenuScreen extends StatelessWidget {
  const DetailMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Bola',
        ),
      ),
      body: ListView(
        children: [
          NewsCard(),
        ],
      ),
    );
  }
}
