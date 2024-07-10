import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_c11_mon/home/tabs/ahadeth_tab.dart';
import 'package:islami_c11_mon/home/tabs/quran_tab.dart';
import 'package:islami_c11_mon/home/tabs/radio_tab.dart';
import 'package:islami_c11_mon/home/tabs/sebha_tab.dart';
import 'package:islami_c11_mon/home/tabs/settings_tab.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "home";

  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset("assets/images/main_bg.png"),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            centerTitle: true,
            title: Text(
              "Islami",
              style: GoogleFonts.elMessiri(
                  fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
              currentIndex: selectedIndex,
              onTap: (index) {
                selectedIndex = index;
                setState(() {});
              },
              showUnselectedLabels: false,
              showSelectedLabels: false,
              type: BottomNavigationBarType.fixed,
              backgroundColor: Color(0xffB7935F),
              selectedItemColor: Colors.black,
              unselectedItemColor: Colors.white,
              items: [
                BottomNavigationBarItem(
                    backgroundColor: Color(0xffB7935F),
                    icon:
                        ImageIcon(AssetImage("assets/images/moshaf_blue.png")),
                    label: "Moshaf"),
                BottomNavigationBarItem(
                    backgroundColor: Color(0xffB7935F),
                    icon: ImageIcon(AssetImage("assets/images/sebha_blue.png")),
                    label: "Sebha"),
                BottomNavigationBarItem(
                    backgroundColor: Color(0xffB7935F),
                    icon: ImageIcon(AssetImage("assets/images/radio_blue.png")),
                    label: "Radio"),
                BottomNavigationBarItem(
                    backgroundColor: Color(0xffB7935F),
                    icon: ImageIcon(AssetImage("assets/images/ahadeth.png")),
                    label: "Ahadeth"),
                BottomNavigationBarItem(
                    backgroundColor: Color(0xffB7935F),
                    icon: Icon(Icons.settings),
                    label: "Settings"),
              ]),

          body: tabs[selectedIndex],

        ),
      ],
    );
  }
  List<Widget> tabs=[
    QuranTab(),
    SebhaTab(),
    RadioTab(),
    AhadethTab(),
    SettingsTab()
  ];
}
