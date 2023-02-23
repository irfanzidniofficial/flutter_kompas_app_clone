import 'package:flutter/material.dart';

class PolicyWidget extends StatelessWidget {
  const PolicyWidget({
    super.key,
    this.type = "Daftar",
  });
  final String type;

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.justify,
      text: TextSpan(
        text:
            'Dengan menekan tombol "$type", kamu menyetujui bahwa data dan informasi KG Media ID milikmu akan digunakan untuk memberikan layanan sesuai  ',
        style: const TextStyle(
          color: Colors.black,
        ),
        children: const <TextSpan>[
          TextSpan(
            text: 'Kebijakan',
            style: TextStyle(
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}
