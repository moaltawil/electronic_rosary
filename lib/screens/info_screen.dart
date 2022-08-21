import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class InfoScreen extends StatelessWidget {
  InfoScreen({Key? key}) : super(key: key);

  String? _message;

  @override
  Widget build(BuildContext context) {
    ModalRoute? modalRoute = ModalRoute.of(context);
    if(modalRoute != null){
      Map<String,dynamic> data = modalRoute.settings.arguments as Map<String,dynamic>;
      if(data.containsKey('message')){
        _message = data['message'];
      }
    }
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(backgroundColor: Colors.transparent,
        centerTitle: true,
        titleTextStyle:const TextStyle(color: Colors.black,fontSize: 22),
        iconTheme:const IconThemeData(
          color: Colors.black
        ),
        elevation: 1,

        title: Text('عن التطبيق',
          style: GoogleFonts.cairo(
          ),),
      ),
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: AlignmentDirectional.topStart,
                end: AlignmentDirectional.bottomEnd,
                colors: [
                  Color(0xFFF7E9D7),
                  Color(0xFFEBD8C3),
                ])),
        child: Center(
          child: Text(
            _message ?? 'Message',
            style: GoogleFonts.cairo(
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
