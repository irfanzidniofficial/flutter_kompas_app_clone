import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_kompas_app_clone/src/common_widgets/primary_button.dart';
import 'package:flutter_kompas_app_clone/src/constants/app_sizes.dart';
import 'package:flutter_kompas_app_clone/src/constants/app_values.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int? currentIndex = 0;
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
          Column(
            children: [
              Expanded(
                flex: 82,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(
                        currentIndex == 0 || currentIndex == 3 ? 0 : 0.7),
                  ),
                  child: CarouselSlider(
                    items: [
                      Opacity(
                        opacity: 0,
                        child: Image.asset(
                          'assets/img_slider_one.png',
                          height: 331,
                        ),
                      ),
                      Opacity(
                        opacity: 0.3,
                        child: Image.asset(
                          'assets/img_slider_one.png',
                          height: 331,
                        ),
                      ),
                      Opacity(
                        opacity: 0.3,
                        child: Image.asset(
                          'assets/img_slider_two.png',
                          height: 331,
                        ),
                      ),
                      Opacity(
                        opacity: 1,
                        child: Image.asset(
                          'assets/img_slider_three.png',
                          height: 331,
                        ),
                      ),
                    ],
                    carouselController: carouselController,
                    options: CarouselOptions(
                      viewportFraction: 4,
                      height: double.infinity,
                      enableInfiniteScroll: false,
                      onPageChanged: (index, reason) => {
                        setState(() {
                          currentIndex = index;
                        })
                      },
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 18,
                child: Container(),
              )
            ],
          ),
          currentIndex == 0
              ?
              // Item 1
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
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
                        titles[currentIndex = 0],
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: semiBold,
                        ),
                      ),
                      gapH16,
                      Text(
                        subtitles[currentIndex = 0],
                        style: const TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                )
              : currentIndex == 1
                  ?
                  // item 2
                  Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          RichText(
                            text: TextSpan(
                              text: 'Atur ',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: semiBold,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: 'Minat',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.deepOrange,
                                    fontWeight: semiBold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          gapH16,
                          Text(
                            subtitles[currentIndex = 1],
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    )
                  : currentIndex == 2
                      ?
                      // item 3
                      Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Text(
                                'Simpan dan',
                                style: TextStyle(
                                    fontSize: 12, color: Colors.white),
                              ),
                              gapH16,
                              Text(
                                'Baca Nanti',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: semiBold,
                                  color: Colors.deepOrange,
                                ),
                              ),
                            ],
                          ),
                        )
                      :
                      // item 4
                      Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const SizedBox(
                                height: 94,
                              ),
                              const Text(
                                'Untuk mendapatkan berita\nyang kamu suka',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                              gapH16,
                              RichText(
                                text: TextSpan(
                                  text: 'Notifikasi ',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.deepOrange,
                                    fontWeight: semiBold,
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: 'Berita',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: semiBold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const SizedBox(),
                const Spacer(),
                PrimaryButton(
                  text: currentIndex == 0 ? 'Ayo Mulai' : 'Lanjutkan',
                  onPressed: () {
                    if (currentIndex != null) {
                      carouselController.nextPage();
                    }
                  },
                ),
                gapH32,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: currentIndex == 0 ? 13 : 9,
                      width: currentIndex == 0 ? 13 : 9,
                      decoration: BoxDecoration(
                        color:
                            currentIndex == 0 ? Colors.deepOrange : Colors.grey,
                        shape: BoxShape.circle,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      height: currentIndex == 1 ? 13 : 9,
                      width: currentIndex == 1 ? 13 : 9,
                      decoration: BoxDecoration(
                        color:
                            currentIndex == 1 ? Colors.deepOrange : Colors.grey,
                        shape: BoxShape.circle,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      height: currentIndex == 2 ? 13 : 9,
                      width: currentIndex == 2 ? 13 : 9,
                      decoration: BoxDecoration(
                        color:
                            currentIndex == 2 ? Colors.deepOrange : Colors.grey,
                        shape: BoxShape.circle,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      height: currentIndex == 3 ? 13 : 9,
                      width: currentIndex == 3 ? 13 : 9,
                      decoration: BoxDecoration(
                        color:
                            currentIndex == 3 ? Colors.deepOrange : Colors.grey,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ],
                ),
                gapH32,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
