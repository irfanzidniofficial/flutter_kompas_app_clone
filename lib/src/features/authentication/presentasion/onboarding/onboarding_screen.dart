import 'package:flutter/material.dart';
import 'package:flutter_kompas_app_clone/src/common_widgets/primary_button.dart';
import 'package:flutter_kompas_app_clone/src/constants/app_sizes.dart';
import 'package:flutter_kompas_app_clone/src/constants/app_values.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 58,
                  height: 58,
                  decoration: BoxDecoration(
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
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(),
                Spacer(),
                PrimaryButton(
                  text: 'Ayo Mulai',
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
