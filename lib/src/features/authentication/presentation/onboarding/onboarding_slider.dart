import 'package:flutter/material.dart';
import 'package:flutter_kompas_app_clone/src/constants/app_sizes.dart';
import 'package:flutter_kompas_app_clone/src/constants/theme.dart';

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

class OnboardingSliderSecond extends StatelessWidget {
  const OnboardingSliderSecond({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: 0,
          bottom: 0,
          right: 0,
          top: 0,
          child: Stack(
            children: [
              Positioned(
                left: 0,
                bottom: 0,
                right: 0,
                top: 50,
                child: Column(
                  children: [
                    Expanded(
                      flex: 82,
                      child: Image.asset(
                        'assets/img_slider_one.png',
                        width: 281,
                        height: 588,
                      ),
                    ),
                    Expanded(
                      flex: 18,
                      child: Container(),
                    ),
                  ],
                ),
              ),
              Positioned(
                child: Column(
                  children: [
                    Expanded(
                      flex: 82,
                      child: Container(
                        color: Colors.black.withOpacity(0.7),
                      ),
                    ),
                    Expanded(
                      flex: 18,
                      child: Container(
                        color: whiteColor,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                left: 0,
                top: 150,
                bottom: 0,
                right: 0,
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
                    const Text(
                      'Untuk mendapatkan berita\nyang kamu suka',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class OnboardingSliderFirst extends StatelessWidget {
  const OnboardingSliderFirst({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 58,
          height: 58,
          decoration: const BoxDecoration(
              image:
                  DecorationImage(image: AssetImage('assets/ic_kompas.png'))),
        ),
        gapH16,
        Text(
          titles[0],
          style: TextStyle(
            fontSize: 20,
            fontWeight: semiBold,
          ),
        ),
        gapH16,
        Text(
          subtitles[0],
          style: const TextStyle(
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}

class OnboardingSliderThird extends StatelessWidget {
  const OnboardingSliderThird({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: 0,
          bottom: 0,
          right: 0,
          top: 0,
          child: Stack(
            children: [
              Positioned(
                left: 0,
                bottom: 0,
                right: 0,
                top: 50,
                child: Column(
                  children: [
                    Expanded(
                      flex: 82,
                      child: Image.asset(
                        'assets/img_slider_two.png',
                        width: 281,
                        height: 588,
                      ),
                    ),
                    Expanded(
                      flex: 18,
                      child: Container(),
                    ),
                  ],
                ),
              ),
              Positioned(
                child: Column(
                  children: [
                    Expanded(
                      flex: 82,
                      child: Container(
                        color: Colors.black.withOpacity(0.7),
                      ),
                    ),
                    Expanded(
                      flex: 18,
                      child: Container(
                        color: whiteColor,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                left: 0,
                top: 150,
                bottom: 0,
                right: 0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      width: 200,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: whiteColor,
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.bookmark_border,
                            color: lightGreyColor,
                          ),
                          gapW8,
                          Text(
                            'Simpan ke Baca Nanti',
                            style: blackTextStyle.copyWith(
                              fontSize: 10,
                              fontWeight: medium,
                            ),
                          )
                        ],
                      ),
                    ),
                    gapH16,
                    const Text(
                      'Simpan dan',
                      style: TextStyle(fontSize: 14, color: Colors.white),
                    ),
                    gapH4,
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
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class OnboardingSliderFourth extends StatelessWidget {
  const OnboardingSliderFourth({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: 0,
          bottom: 0,
          right: 0,
          top: 0,
          child: Stack(
            children: [
              Positioned(
                left: 0,
                bottom: 0,
                right: 0,
                top: 50,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 94,
                    ),
                    Text(
                      'Untuk mendapatkan berita\nyang kamu suka',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: semiBold,
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
                    Image.asset(
                      'assets/img_slider_three.png',
                      width: 281,
                      height: 588,
                    ),
                  ],
                ),
              ),
              Positioned(
                child: Column(
                  children: [
                    const Expanded(flex: 82, child: SizedBox()),
                    Expanded(
                      flex: 18,
                      child: Container(
                        color: whiteColor,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
