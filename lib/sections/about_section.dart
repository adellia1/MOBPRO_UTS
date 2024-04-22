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
            "Tri Rahayu biasa disebut Ayu adalah seorang mahasiswa yang lahir di Padamara, Kabupaten Purbalingga, pada tanggal 4 September 2002. Sebagai anak ketiga dalam keluarganya, Ayu tumbuh dalam lingkungan yang penuh kasih sayang dan dukungan. Sejak SMP, Ayu telah menunjukkan minat yang besar dalam kegiatan mendaki gunung. Hobi ini menjadi bagian penting dari kehidupannya, menghadirkan tantangan dan kegembiraan yang tak terlupakan. Setiap kesempatan yang ada, Ayu selalu mencari waktu untuk menjelajahi jalur-jalur mendaki dan menaklukkan puncak-puncak tinggi. Meskipun begitu, Ayu juga sangat serius dalam mengejar pendidikan. Saat ini, Ayu sedang menempuh pendidikan tinggi di salah satu perguruan tinggi di Purwokerto. Semangat belajar Ayu yang tinggi mencerminkan dedikasi dan tekadnya untuk mencapai kesuksesan dalam karier masa depannya.",
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
    );
  }
}
