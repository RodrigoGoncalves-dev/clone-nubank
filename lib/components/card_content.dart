import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:nubank/components/button_white.dart';

class CardContent extends StatelessWidget {
  final IconData icon;
  final IconData iconCircle;

  final String title;

  final String subtitle;

  final String value;

  final String bottomTitle;
  final bool optionalTitle;
  final bool optionalCircle;

  const CardContent({
    Key key,
    this.icon,
    this.title,
    this.subtitle,
    this.value,
    this.bottomTitle,
    this.optionalTitle = true,
    this.optionalCircle = true,
    this.iconCircle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Container(
        height: optionalCircle ? height / 5 : height / 4,
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                optionalCircle
                    ? Icon(
                        icon,
                        color: Colors.black.withOpacity(.7),
                      )
                    : CircleAvatar(
                        maxRadius: 20,
                        minRadius: 18,
                        backgroundColor: Colors.purple[700].withOpacity(.3),
                        child: Icon(
                          iconCircle,
                          color: Colors.black.withOpacity(.7),
                        ),
                      ),
                SizedBox(
                  width: width / 20,
                ),
                Text(
                  title,
                  style: optionalCircle
                      ? GoogleFonts.oxygen(
                          color: Colors.black.withOpacity(.7),
                          fontSize: 16,
                        )
                      : GoogleFonts.oxygen(
                          color: Colors.purple[800],
                          fontSize: 24,
                        ),
                ),
              ],
            ),
            SizedBox(
              height: height / 30,
            ),
            AutoSizeText(
              subtitle,
              style: optionalCircle
                  ? GoogleFonts.oxygen(
                      color: Colors.black.withOpacity(.7),
                      fontSize: 14,
                    )
                  : GoogleFonts.oxygen(
                      color: Colors.black,
                      fontSize: 16,
                    ),
            ),
            SizedBox(
              height: height / 75,
            ),
            !optionalCircle
                ? ButtonWhite(
                    width: width,
                    widthContent: 0.3,
                    text: 'CONHECER',
                    height: 45,
                    noPadding: true,
                    min: true,
                  )
                : Text(
                    value,
                    style: GoogleFonts.oxygen(
                      color: Colors.blue.withOpacity(1),
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
            SizedBox(
              height: height / 180,
            ),
            optionalTitle
                ? Text(
                    bottomTitle,
                    style: GoogleFonts.oxygen(
                      color: Colors.black,
                      fontSize: 14,
                    ),
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}
