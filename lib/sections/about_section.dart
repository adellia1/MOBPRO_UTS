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
            "Nama saya Rahayu Dwi Setiowati, lahir di Purbalingga, 19 Maret 2003,  saya adalah anak kedua dari tiga bersaudara, dari pasangan Rusmiarto dan Sami. Ayu adalah nama panggilanku. Saya terlahir di keluarga yang sederhana, ayah seorang pedagang, sedangkan ibu bekerja sebagai Ibu Rumah Tangga (IRT). Sejak kecil, saya selalu dinasehati oleh ayah saya untuk selalu rajin beribadah, jujur dan baik terhadap sesama. Ketika berumur 7 tahun, saya memulai pendidikan di SDN 1 Mipiran, kemudian setelah lulus melanjutkan pendidikannya di SMPN 2 Padamara, di tahun 2011 Setelah lulus dari SMP di tahun 2014, saya melanjutkan pendidikannya di SMK N 1 Kutasari.",
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
    );
  }
}
