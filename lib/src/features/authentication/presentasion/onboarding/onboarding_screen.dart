import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_kompas_app_clone/src/common_widgets/primary_button.dart';
import 'package:flutter_kompas_app_clone/src/constants/app_sizes.dart';
import 'package:flutter_kompas_app_clone/src/constants/app_values.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int currentIndex = 0;
  CarouselController carouselController = CarouselController();

  List<String> titles = [
    'Selamat Datang',
    'Atur Minat',
    'Baca Nanti',
    'Notifikasi Berita'
  ];

  List<String> subtitles = [
    'Dapatkan berita terupdate, jernih, akurat\ndan terpercaya hanya di Kompas.com',
    'Untuk mendapatkan berita\nyang kamu suka',
    'Simpan dan',
    'Update cepet dengan'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/img_bg_kompas_logo.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          CarouselSlider(
            items: [
              // item 1
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 58,
                    height: 58,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/ic_kompas.png'))),
                  ),
                  gapH16,
                  Text(
                    'Selamat Datang',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: semiBold,
                    ),
                  ),
                  gapH16,
                  Text(
                    'Dapatkan berita terupdate, jernih, akurat\ndan terpercaya hanya di Kompas.com',
                    style: const TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              // item 2
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 58,
                    height: 58,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/ic_kompas.png'))),
                  ),
                  gapH16,
                  Text(
                    'Atur Minat',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: semiBold,
                    ),
                  ),
                  gapH16,
                  Text(
                    'Untuk mendapatkan berita\nyang kamu suka',
                    style: const TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              // item 3
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 58,
                    height: 58,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/ic_kompas.png'))),
                  ),
                  gapH16,
                  Text(
                    'Baca Nanti',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: semiBold,
                    ),
                  ),
                  gapH16,
                  Text(
                    'Simpan dan',
                    style: const TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              // item 4
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 58,
                    height: 58,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/ic_kompas.png'))),
                  ),
                  gapH16,
                  Text(
                    'Notifikasi Berita',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: semiBold,
                    ),
                  ),
                  gapH16,
                  Text(
                    'Update cepet dengan',
                    style: const TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ],
            options: CarouselOptions(
              viewportFraction: 1,
              height: double.infinity,
              enableInfiniteScroll: false,
              onPageChanged: (index, reason) => {
                setState(() {
                  currentIndex = index;
                })
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const SizedBox(),
                const Spacer(),
                PrimaryButton(
                  text: 'Ayo Mulai',
                  onPressed: () {
                    carouselController.nextPage();
                  },
                ),
                gapH32,
                gapH32,
              ],
            ),
          )
        ],
      ),
    );
  }
}
