import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class screen3 extends StatefulWidget {
  const screen3({Key? key}) : super(key: key);

  @override
  State<screen3> createState() => _screen3State();
}

class _screen3State extends State<screen3> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   title: Text("dd"),
        //   centerTitle: true,
        // ),
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        height: 150,width: 200,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black26, width: 1),
                            color: Colors.white10,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10),),),
                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Your details:",
                                style: TextStyle(
                                    color: Colors.blueAccent,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "From:",
                                style: GoogleFonts.abrilFatface(
                                    color: Colors.grey, fontSize: 15),
                              ),
                              SizedBox(height: 12,),
                              Text(
                                "XYZ Seller",
                                style: GoogleFonts.aBeeZee(),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "123 Sell street",
                                style: TextStyle(fontSize: 12,color: Colors.grey),
                              ),Text(
                                "orange country",
                                style: TextStyle(fontSize: 12,color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Expanded(
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        width: 200,
                        height: 150,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black26, width: 1),
                            color: Colors.white10,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10),),),
                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Your details:",
                                style: TextStyle(
                                    color: Colors.blueAccent,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "From:",
                                style: GoogleFonts.abrilFatface(
                                    color: Colors.grey, fontSize: 15),
                              ),
                              SizedBox(height: 12,),
                              Text(
                                "XYZ Seller",
                                style: GoogleFonts.aBeeZee(),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "123 Sell street",
                                style: TextStyle(fontSize: 12,color: Colors.grey),
                              ),Text(
                                "orange country",
                                style: TextStyle(fontSize: 12,color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),

                ],
                
              ),
            ],
          ),
        ),
      ),
    );
  }
}
