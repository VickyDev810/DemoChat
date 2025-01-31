import 'package:demochat/calls_page.dart';
import 'package:demochat/components/search_bar.dart';
import 'package:demochat/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/colors.dart';
import '../utils/custom_shapes.dart';

Widget topHeader(BuildContext context, TextEditingController searchController,
    int selectedIndex, String indexText) {
  return SizedBox(
    height: 320,
    child: Stack(
      children: [
        ClipPath(
          clipper: WaveClipper(),
          child: Container(
            height: 300,
            width: MediaQuery.sizeOf(context).width,
            decoration: BoxDecoration(
                gradient: customLinear,
                borderRadius: const BorderRadiusDirectional.only(
                    bottomStart: Radius.circular(100))),
          ),
        ),
        Column(
          children: [
            SizedBox(
              height: MediaQuery.sizeOf(context).height * .04,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              IconButton(
                  style: IconButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ),
                  onPressed: () {},
                  icon: const Icon(
                    Icons.camera_alt_outlined,
                    color: Color(0xff9599AA),
                    size: 25,
                  )),
              Text('DemoChat',
                  style: GoogleFonts.poppins(
                      color: const Color(0xffDFE2EB), fontSize: 25)),
              IconButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => SearchPage(
                              controller: searchController,
                            )));
                  },
                  icon: const Icon(
                    Icons.search_rounded,
                    color: Color(0xff9599AA),
                    size: 25,
                  ))
            ]),
            const SizedBox(height: 20),
            Container(
              height: 80,
              width: MediaQuery.sizeOf(context).width * 4 / 5,
              decoration: BoxDecoration(
                  gradient: customLinear2,
                  borderRadius: BorderRadius.circular(12)),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomePage()));
                        },
                        child: selectedIndex == 0
                            ? _selectedContainer('Chats')
                            : _unSelectedContainer('Chats')),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const StatusPage()));
                        },
                        child: selectedIndex == 1
                            ? _selectedContainer('Status')
                            : _unSelectedContainer('Status')),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const CallsPage()));
                        },
                        child: selectedIndex == 2
                            ? _selectedContainer('Calls')
                            : _unSelectedContainer('Calls')),
                  ]),
            ),
          ],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            height: 75,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      indexText,
                      style: GoogleFonts.poppins(
                          color: bodyColor,
                          fontSize: 30,
                          fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Friends',
                      textAlign: TextAlign.start,
                      style: GoogleFonts.poppins(
                          color: const Color(0xff798194), fontSize: 15),
                    )
                  ],
                ),
                Icon(
                  Icons.menu,
                  size: 30,
                  color: bodyColor,
                )
              ],
            ),
          ),
        )
      ],
    ),
  );
}

Widget _unSelectedContainer(String text) {
  return Container(
    alignment: Alignment.center,
    height: 50,
    width: 80,
    child: Text(text,
        style: GoogleFonts.poppins(
            color: const Color(0xffC4C6D9),
            fontWeight: FontWeight.w500,
            fontSize: 20)),
  );
}

Widget _selectedContainer(String text) {
  return Container(
    height: 50,
    width: 80,
    alignment: Alignment.center,
    decoration: BoxDecoration(
        color: const Color(0xff202342),
        borderRadius: BorderRadius.circular(12)),
    child: Text(text,
        style: GoogleFonts.poppins(
            color: const Color(0xffD1D1DE),
            fontWeight: FontWeight.w500,
            fontSize: 20)),
  );
}
