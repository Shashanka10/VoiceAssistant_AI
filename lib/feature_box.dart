import "package:flutter/material.dart";
import "package:voiceassist_ai/pallete.dart";

class FeatureBox extends StatelessWidget {
  final Color color;
  final String headerText;
  final String desctext;
  const FeatureBox(
      {super.key,
      required this.color,
      required this.headerText,
      required this.desctext});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 35,
        vertical: 10,
      ),
      decoration: BoxDecoration(
          color: color,
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          )),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15).copyWith(
          left: 15,
        ),
        child: Column(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                headerText,
                style: const TextStyle(
                  fontFamily: "Cera Pro",
                  color: Pallete.blackColor,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 20,
                top: 5,
              ),
              child: Text(
                desctext,
                style: const TextStyle(
                  fontFamily: "Cera Pro",
                  color: Pallete.mainFontColor,
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
