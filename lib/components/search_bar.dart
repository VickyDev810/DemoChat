import 'package:demochat/utils/colors.dart';
import 'package:demochat/utils/custom_shapes.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  final TextEditingController controller;
  const SearchPage({super.key, required this.controller});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            ClipPath(
              clipper: WaveClipper(),
              child: Container(
                height: 320,
                decoration: BoxDecoration(
                  gradient: customLinear,
                ),
              ),
            ),
            Positioned(
              top: 15,
              child: SizedBox(
                width: MediaQuery.sizeOf(context).width*0.99,
                child: SearchBar(
                controller: widget.controller,
                hintText: 'Search for people,Groups etc.',
                ),
              ),
            ),
            Positioned(
                top: 1,
                child: IconButton(
                    onPressed: (){
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(Icons.arrow_circle_left_rounded,size: 30,)))
        ]
        ),
      )
    );
  }
}
