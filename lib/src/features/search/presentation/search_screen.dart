import 'package:flutter/material.dart';
import 'package:flutter_kompas_app_clone/src/constants/theme.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final _controller = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Search",
        ),
      ),
      body: ListView(
        children: [
          Container(
            height: 67,
            color: lightGreyColor,
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            child: ValueListenableBuilder<TextEditingValue>(
                valueListenable: _controller,
                builder: (context, value, _) {
                  return TextField(
                      autofocus: false,
                      decoration: InputDecoration(
                        icon: Icon(Icons.search),
                        hintText: 'Masukan kata kunci pencarian',
                        suffixIcon: value.text.isNotEmpty
                            ? IconButton(
                                onPressed: () {
                                  _controller.clear();
                                },
                                icon: Icon(Icons.clear),
                              )
                            : null,
                      ),
                      onChanged: (text) {});
                }),
          )
        ],
      ),
    );
  }
}
