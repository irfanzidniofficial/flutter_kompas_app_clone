import 'package:flutter/material.dart';
import 'package:flutter_kompas_app_clone/src/common_widgets/news_card.dart';

class DetailMenuScreen extends StatelessWidget {
  const DetailMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Bola',
        ),
      ),
      body: ListView(
        children: const [
          NewsCard(
            category: 'Bola',
            image: 'assets/img_news_two.png',
            title:
                'Hasil Indonesia Masters 2023: Selamat Datang Kembali,Praveen/Melati!',
          ),
        ],
      ),
    );
  }
}
