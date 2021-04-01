import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InputText extends StatelessWidget {
  final String hintText;

  const InputText({
    Key key,
    this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(25, 10, 25, 10),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: GoogleFonts.oxygen(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black.withOpacity(.7),
            ),
          ),
        ),
      ),
    );
  }
}
