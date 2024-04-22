import 'package:flutter/material.dart';

import 'sections/about_section.dart';
import 'sections/contact_section.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  List<Tab> tabs = [
    const Tab(
      text: "About",
      icon: Icon(
        Icons.account_box,
      ),
    ),
    const Tab(
      text: "Contact",
      icon: Icon(
        Icons.contact_page,
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 211, 48, 143),
          titleTextStyle: const TextStyle(
            color: Colors.white,
          ),
          toolbarHeight: 275,
          title: Padding(
            padding: const EdgeInsets.only(top: 35.0),
            child: Column(
              children: [
                profilePhotos(),
                profileName(),
                hobbies(),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: stats(),
                ),
              ],
            ),
          ),
          bottom: TabBar(
            tabs: tabs,
            indicatorColor: Colors.white,
            indicatorSize: TabBarIndicatorSize.tab,
          ),
        ),
        body: TabBarView(
          children: [
            const SingleChildScrollView(
              child: AboutSection(),
            ),
            SingleChildScrollView(
              child: contactSection(),
            ),
          ],
        ),
      ),
    );
  }

  Padding hobbies() {
    return const Padding(
      padding: EdgeInsets.only(
        top: 5.0,
        bottom: 5.0,
      ),
      child: Text(
        "Traveller",
        style: TextStyle(
          fontWeight: FontWeight.normal,
          fontSize: 12,
        ),
      ),
    );
  }

  Padding profileName() {
    return const Padding(
      padding: EdgeInsets.only(top: 8.0),
      child: Text(
        "RAHAYU DWI SETIOWATI",
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Row stats() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            Text(
              "Photos",
              style: TextStyle(
                color: Color.fromARGB(255, 28, 124, 172),
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              "15",
              style: TextStyle(fontWeight: FontWeight.normal),
            ),
          ],
        ),
        Column(
          children: [
            Text(
              "Followers",
              style: TextStyle(
                color: Color.fromARGB(255, 28, 124, 172),
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              "1132",
              style: TextStyle(fontWeight: FontWeight.normal),
            ),
          ],
        ),
        Column(
          children: [
            Text(
              "Following",
              style: TextStyle(
                color: Color.fromARGB(255, 28, 124, 172),
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              "617",
              style: TextStyle(fontWeight: FontWeight.normal),
            ),
          ],
        ),
      ],
    );
  }

Container profilePhotos() {
  return Container(
    decoration: const BoxDecoration(
      shape: BoxShape.circle,
      color: Colors.red,
    ),
    width: 100,
    height: 100,
    alignment: Alignment.center,
    child: CircleAvatar(
      radius: 100,
      backgroundColor: Colors.transparent,
      backgroundImage: AssetImage('img/rahayu.jpg'),
    ),
  );
}

}
