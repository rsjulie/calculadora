import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:google_fonts/google_fonts.dart';

class Display extends StatelessWidget {
  final String text;

  const Display({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 1,
        child: Container(
            color: const Color.fromRGBO(48, 48, 48, 1),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: AutoSizeText(
                    text,
                    minFontSize: 20,
                    maxFontSize: 80,
                    maxLines: 1,
                    textAlign: TextAlign.end,
                    style: GoogleFonts.roboto(
                        fontSize: 80,
                        fontWeight: FontWeight.w100,
                        color: Colors.white,
                        decoration: TextDecoration.none),
                  ),
                ),
              ],
            )));
  }
}
