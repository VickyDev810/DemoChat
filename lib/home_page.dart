import 'package:demochat/components/header.dart';
import 'package:demochat/utils/change_profile.dart';
import 'package:flutter/material.dart';
import 'utils/colors.dart';
import 'package:google_fonts/google_fonts.dart';

TextEditingController searchController = TextEditingController();


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
          padding: EdgeInsets.zero,
          children: [
            topHeader(context, searchController, selectedIndex, 'All Chats'),
            customChatBox(
                'https://i.pinimg.com/474x/59/cd/b2/59cdb2d00d15b6d2eb09a4e97ffae850.jpg',
                'Luffy', 'I\'ll become the King of Pirates!', DateTime.now()),
            customChatBox(
                'https://i.pinimg.com/474x/22/10/80/2210804bce8c9e12be01413daa8fc817.jpg',
                'Zoro', 'Where the F**k am i?', DateTime.now()),
            customChatBox(
                'https://i.pinimg.com/474x/4a/c6/1f/4ac61f43decbe1caec69d38730415f3f.jpg',
                'Robin',
                'Sometimes the only thing you have to doubt is your own common sense.',
                DateTime.now()),
            const SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: TextButton(
                  onPressed: (){

                  },
                  child: Text('See More',style: GoogleFonts.poppins(color: const Color(0xffA37084),fontWeight: FontWeight.w500,fontSize: 20),)),
            ),
            customChatBox(
                'https://i.pinimg.com/474x/29/b0/00/29b000fc1f2ab7119004c31b9203fdf0.jpg',
                'Sanji', 'Food is ready!!', DateTime.now()),
            customChatBox(
                'https://i.pinimg.com/474x/d9/62/54/d9625448dded238e1c8bce51adfb64fd.jpg',
                'Nami', 'Found a treasure map :)', DateTime.now()),
          ],
        )
    );
  }

  Widget customChatBox(String imageUrl, String name, String recentText,
      DateTime time) {
    return Container(
      padding: const EdgeInsets.only(top: 12),
      child: Row(
        children: [
          const SizedBox(width: 20,),
          homeProfile(name, imageUrl, context),
          const SizedBox(width: 10,),
          SizedBox(
            width: MediaQuery
                .sizeOf(context)
                .width * 0.50,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name, style: GoogleFonts.poppins(fontSize: 18,
                    color: bodyColor,
                    fontWeight: FontWeight.w500),),
                Text(recentText, overflow: TextOverflow.ellipsis,),
              ],
            ),
          ),
          SizedBox(width: MediaQuery
              .sizeOf(context)
              .width * 0.14,),
          Text('${time.hour}:${time.minute}')

        ],
      ),
    );
  }
}
