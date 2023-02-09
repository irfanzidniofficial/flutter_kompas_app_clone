import 'package:flutter/material.dart';
import 'package:flutter_kompas_app_clone/src/constants/app_sizes.dart';
import 'package:flutter_kompas_app_clone/src/constants/theme.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search'),
      ),
      body: Container(
        width: double.infinity,
        height: 67.0,
        decoration: BoxDecoration(
          color: lightGreyColor,
        ),
        child: Row(
          children: [
            Icon(
              Icons.search,
              size: 30.0,
              color: greyColor,
            ),
            gapW12,
            // const TextField(
            //   decoration: InputDecoration(
            //     border: InputBorder.none,
            //     hintText: 'Masukan kata kunci pencarian',
            //   ),
            // ),

            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.cancel,
                color: greyColor,
                size: 30.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
