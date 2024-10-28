import 'package:flutter/material.dart';
import 'package:portfolio/styles/style.dart';
import 'package:portfolio/widgets/typingeffect.dart';

import '../common/widgets/all_platform_links.dart';
import '../constants/colors.dart';

class MainDesktop extends StatelessWidget {
  final screenSize;
  void Function()? downloadCv;
  MainDesktop({super.key, required this.screenSize,
  required this.downloadCv});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20.0),
      height: screenSize.height / 1.2,
      constraints: const BoxConstraints(minHeight: 350.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Hi,",
                style: TextStyle(
                  fontSize: 30.0,
                  height: 1.5,
                  fontWeight: FontWeight.bold,
                  color: CustomColor.whitePrimary,
                ),
              ),
              const Text(
                "I'm Waqarul Hasan Naqvi",
                style: TextStyle(
                  fontSize: 30.0,
                  height: 1.5,
                  fontWeight: FontWeight.bold,
                  color: CustomColor.whitePrimary,
                ),
              ),
              const TypingEffect(
                text: "Mobile & Web Developer",
              ),
              const SizedBox(height: 15,),
              const AllPlatformLinks(),
              const SizedBox(height: 15,),
              SizedBox(
                  width: 250,
                  child: ElevatedButton(
                      onPressed: downloadCv,
                      style: kButtonStyle,
                      child: const Text(
                        "DOWNLOAD CV",
                        style: TextStyle(color: CustomColor.whitePrimary),
                      ))),
            ],
          ),
          Image.asset("assets/images/waqarul.png",
              width: screenSize.width /2.8,height: screenSize.height ),
        ],
      ),
    );
  }
}
