import 'package:flutter/material.dart';

class medi_music extends StatefulWidget {
  const medi_music({Key? key}) : super(key: key);

  @override
  State<medi_music> createState() => _medi_musicState();
}

class _medi_musicState extends State<medi_music> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/Meditate_music_bg.png"),
            fit: BoxFit.cover
          )
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                icon: const Icon(Icons.cancel_outlined),
                color: Colors.white,
                onPressed: () => Navigator.pop(context),
              ),
            ),
            const SizedBox(
              height: 550,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 200,
                width: 350,
                decoration: BoxDecoration(
                  color: const Color(0xFFFEBDE7).withOpacity(0.8),
                  borderRadius: BorderRadius.circular(25)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Icon(Icons.favorite_border_outlined, color: Color(0xFF554DA5),),
                        Text("Selfcare", style: TextStyle(fontSize: 15, color: Color(0xFF554DA5)),),
                        Icon(Icons.file_upload_outlined, color: Color(0xFF554DA5))
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text("Lorem Ipsum Dolor", style: TextStyle(fontSize: 13, color: Color(0xFF554DA5)),),
                    const SizedBox(
                      height: 30,
                    ),
                    Image.asset("assets/images/line.png"),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Text("0:00", style: TextStyle(fontSize: 12, color: Color(0xFF554DA5))),
                        SizedBox(
                          width: 190,
                        ),
                        Text("4:23", style: TextStyle(fontSize: 12, color: Color(0xFF554DA5)))
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            // SizedBox(
                            //   width: 20,
                            // ),

                            Icon(Icons.shuffle,size: 20,),

                            SizedBox(
                              width: 55,
                            ),

                            Icon(Icons.skip_previous, size: 40,),

                            Icon(Icons.play_arrow, size: 60,),
                            Icon(Icons.skip_next,size: 40,),
                            SizedBox(
                              width: 55,
                            ),
                            Icon(Icons.loop, size: 20,),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
