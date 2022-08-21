import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _counter = 0;
  String _content = 'استغفر الله';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        iconTheme:const IconThemeData(
          color: Colors.white
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          'مسبحة الأذكار',
          style: GoogleFonts.cairo(
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/info_screen',
                    arguments: {'message': 'تطبيق مسبحة الأذكار'});
              },
              icon: const Icon(Icons.info),
              ),
          PopupMenuButton<String>(
              icon: const Icon(
                Icons.more_vert,
              ),
              onSelected: (String value) {
                if (value != _content) {
                  setState(() {
                    _content = value;
                    _counter = 0;
                  });
                }
              },
              itemBuilder: (context) {
                return [
                  PopupMenuItem(
                    value: 'الحمد الله',
                    child: Text('الحمد الله',
                        style: GoogleFonts.cairo(fontSize: 14)),
                  ),
                  PopupMenuItem(
                    value: 'سبحان الله',
                    child: Text('سبحان الله',
                        style: GoogleFonts.cairo(fontSize: 14)),
                  ),
                  PopupMenuItem(
                    value: 'استغفر الله',
                    child: Text('استغفر الله',
                        style: GoogleFonts.cairo(fontSize: 14)),
                  ),
                ];
              })
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFF774360),
        onPressed: () {
          setState(() {
            _counter++;
          });
        },
        child: const Icon(Icons.add),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                  'images/image5.jpg',
              ),
              fit: BoxFit.fitHeight),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('images/image.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                margin: const EdgeInsetsDirectional.only(
                  top: 20,
                  bottom: 20,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(_content,
                          textAlign: TextAlign.center,
                          style: GoogleFonts.arefRuqaa(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                    Container(
                      width: 55,
                      height: 55,
                      color: const Color(0xFFE7AB79),
                      alignment: Alignment.center,
                      child: Text(
                        _counter.toString(),
                        style:
                            const TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _counter += 1;
                          //++counter;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(0, 45),
                        primary: const Color(0xFF4C3A51),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(15),
                            bottomRight: Radius.circular(15),
                          ),
                        ),
                      ),
                      child: Text(
                        'تسبيح',
                        style: GoogleFonts.cairo(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _counter = 0;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                          minimumSize: const Size(0, 45),
                          primary: const Color(0xFFB25068),
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            bottomLeft: Radius.circular(15),
                          ))),
                      child: Text('إعادة',
                          style: GoogleFonts.cairo(
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
