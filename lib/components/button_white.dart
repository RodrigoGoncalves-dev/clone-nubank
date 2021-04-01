import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonWhite extends StatelessWidget {
  final double widthContent;
  final bool noPadding;
  final bool min;

  final double height;

  final String text;

  const ButtonWhite({
    Key key,
    @required this.width,
    this.widthContent,
    this.min = false,
    this.height,
    this.text,
    this.noPadding = false,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          !noPadding ? EdgeInsets.fromLTRB(25, 0, 25, 0) : EdgeInsets.all(0),
      child: Container(
        width: width * widthContent,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          border: Border.all(
            width: !min ? 3 : 0.8,
            color: Colors.purple,
          ),
        ),
        child: Center(
          child: Text(
            text,
            style: GoogleFonts.oxygen(
              color: Colors.purple,
              fontSize: !min ? 18 : 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
