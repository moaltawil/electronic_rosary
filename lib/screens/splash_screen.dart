
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 3),(){
      Navigator.pushReplacementNamed(context, '/home_screen');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        alignment: Alignment.center,
        decoration:const BoxDecoration(
            gradient: LinearGradient(
                begin: AlignmentDirectional.topStart,
                end: AlignmentDirectional.bottomEnd,
                colors: [
                  Color(0xFF06113C),
                  Color(0xFFFF8C32),
                ]
            )
        ),
        child: Text(
          'مسبحة الأذكار',
          style: GoogleFonts.cairo(
            color:const Color(0xFFDDDDDD),
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),


    )
    );
  }
}
