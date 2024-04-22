import 'package:flutter/material.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.4,
      width: MediaQuery.of(context).size.width * 1,
      child: Card(
        margin: const EdgeInsets.only(
          top: 20,
          bottom: 20,
          right: 20,
          left: 20,
        ),
        color: Colors.white,
        child: Container(
          padding: const EdgeInsets.all(30),
          child: const Text(
            "Namanya adalah Adellia oktaviani, lahir di Purbalingga, 08 Oktober 2003, ia adalah anak pertama dari dua bersaudara, adel adalah nama panggilannya. Ia empuyai hobi memasak, karena bagi adel memasak bisa menghilangkan rasa jenuh. Adel sekarang sedang menempuh pendidikan disalah satu universitas di Purwokerto yaitu STMIK Widya Utama Purwokerto jurusan Teknik informatika.",
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
    );
  }
}
