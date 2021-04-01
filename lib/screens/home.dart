import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nubank/components/bottom_navigator_buttons.dart';
import 'package:nubank/components/card_content.dart';
import 'package:nubank/components/header_home.dart';
import 'package:nubank/screens/login.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color.fromRGBO(149, 1, 199, 1),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 45,
              ),
              Padding(
                padding: EdgeInsets.only(left: 12, right: 12),
                child: HeaderHome(),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.only(left: 12, right: 12),
                child: SizedBox(
                  height: height / 1.4,
                  child: ListView(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Login()),
                          );
                        },
                        child: CardContent(
                          icon: Icons.credit_card_outlined,
                          title: 'Cartão de crédito',
                          subtitle: 'Fatura atual',
                          value: 'R\$1,15',
                          bottomTitle: 'Limite disponível',
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Login()),
                          );
                        },
                        child: CardContent(
                          icon: Icons.credit_card_outlined,
                          title: 'Conta',
                          subtitle: 'Saldo disponível',
                          value: 'R\$4,15',
                          bottomTitle: 'Limite disponível',
                          optionalTitle: false,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Login()),
                          );
                        },
                        child: CardContent(
                          optionalCircle: false,
                          iconCircle: Icons.card_giftcard_outlined,
                          title: 'Conta',
                          subtitle:
                              'Conheça Nubank Vida: um seguro simples que e que cabe no bolso',
                          optionalTitle: false,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Login()),
                          );
                        },
                        child: CardContent(
                          icon: Icons.credit_card_outlined,
                          title: 'Conta',
                          subtitle: 'Saldo disponível',
                          value: 'R\$4,15',
                          bottomTitle: 'Limite disponível',
                          optionalTitle: false,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              BottomNatigatorButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
