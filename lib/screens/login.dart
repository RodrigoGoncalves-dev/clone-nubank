import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nubank/components/button_white.dart';
import 'package:nubank/components/input_text.dart';
import 'package:nubank/constants/constants.dart';
import 'package:nubank/screens/home.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    final cpfEC = TextEditingController();
    final passwordEC = TextEditingController();
    return Scaffold(
      backgroundColor: Color.fromRGBO(149, 1, 199, 1),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              width: double.infinity,
              height: height * 0.6,
              padding: EdgeInsets.fromLTRB(40, 85, 40, 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                children: [
                  Text(
                    'Faça seu login',
                    style: GoogleFonts.oxygen(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  InputText(
                    hintText: 'CPF',
                    controller: cpfEC,
                  ),
                  InputText(
                    hintText: 'Senha',
                    controller: passwordEC,
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.maybeOf(context).push(
                        MaterialPageRoute(
                          builder: (context) => Home(
                            name: cpfEC.text,
                          ),
                        ),
                      );
                    },
                    child: ButtonWhite(
                      width: width,
                      text: 'CONTINUAR',
                      height: 100,
                      widthContent: 0.5,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
