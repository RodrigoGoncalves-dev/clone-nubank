import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomNatigatorButtons extends StatelessWidget {
  const BottomNatigatorButtons({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.fromLTRB(12, 12, 0, 12),
      child: Container(
        height: height / 9.5,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 7.5),
              child: GestureDetector(
                onTap: () {},
                child: Container(
                    height: 80,
                    width: 80,
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white.withOpacity(.1),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.scanner,
                          color: Colors.white,
                          size: 20,
                        ),
                        Text(
                          'Pix',
                          style: GoogleFonts.oxygen(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
