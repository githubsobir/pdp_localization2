import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:easy_localization/easy_localization.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'title',
          style: GoogleFonts.lato(color: Colors.white, fontSize: 22),
        ).tr(),
      ),
      body: Column(

        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'id1',
                  style: GoogleFonts.lato(color: Colors.black, fontSize: 22),
                  textAlign: TextAlign.center,
                ).tr(),
              ],
            ),
          ),
          Expanded(
              child: Container(
                margin: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  children: [

                   Expanded(child:  FlatButton(
                     height: 40,
                     color: Colors.green,
                     onPressed: () { context.locale = Locale('en', 'US'); },
                     child: Text(
                       'English',
                       style: GoogleFonts.lato(color: Colors.white),
                     ),
                   ),),SizedBox(width: 10),
                    Expanded(child:  FlatButton(
                      height: 40,
                      color: Colors.red,
                      onPressed: () { context.locale = Locale('ko', 'KO'); },
                      child: Text(
                        'Korean',
                        style: GoogleFonts.lato(color: Colors.white),
                      ),
                    ),),SizedBox(width: 10),
                    Expanded(child:  FlatButton(
                      height: 40,
                      color: Colors.blue,
                      onPressed: () { context.locale = Locale('ja', 'JA'); },
                      child: Text(
                        'Japanese',
                        style: GoogleFonts.lato(color: Colors.white),
                      ),
                    ),),
                  ],
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
