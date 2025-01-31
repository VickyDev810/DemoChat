import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class ChangeProfilePicture extends StatefulWidget {
  final String imageUrl;
  const ChangeProfilePicture({super.key,required this.imageUrl});

  @override
  State<ChangeProfilePicture> createState() => _ChangeProfilePictureState();
}

class _ChangeProfilePictureState extends State<ChangeProfilePicture> {
  @override
  Widget build(BuildContext context) {
    return Container(

    );
  }
}


Widget homeProfile(String text,String imageUrl,BuildContext context){
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      padding: EdgeInsets.zero,
    ),
    onPressed: (){},
    onLongPress: (){
      showDialog(context: context, builder: (context){
        return showHomeProfile(text, imageUrl, context);
      });
    },
    child: Container(
      alignment: Alignment.center,
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        color: Colors.black45,
        borderRadius: BorderRadius.circular(12),
        image: DecorationImage(
          image: NetworkImage(imageUrl),
          fit: BoxFit.cover,
        ),
      ),
    ),
  );
}

Widget showHomeProfile(String text,String imageUrl,BuildContext context){
  return AlertDialog(
    backgroundColor: Colors.transparent,
    titleTextStyle: GoogleFonts.poppins(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w500),
    scrollable: false,
    // title:  Text(text,textAlign: TextAlign.center,),
    content: Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        image: DecorationImage(
          image: NetworkImage(imageUrl),
          fit: BoxFit.contain
        )
      ),
      height: MediaQuery.sizeOf(context).height*0.50,
      width: MediaQuery.sizeOf(context).width*0.75,
    ),
  );
}