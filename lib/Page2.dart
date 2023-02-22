import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:invoicegenretor/Modal/Modalclass.dart';

class screen2 extends StatefulWidget {
  const screen2({Key? key}) : super(key: key);

  @override
  State<screen2> createState() => _screen2State();
}

class _screen2State extends State<screen2> {
  TextEditingController txtname = TextEditingController();
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtaddres = TextEditingController();
  TextEditingController txtphone = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Modalclass m1 = ModalRoute.of(context)!.settings.arguments as Modalclass;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          centerTitle: true,
          title: Text(
            "deta Entries",
            style: GoogleFonts.aBeeZee(
                fontSize: 26,
                color: Colors.black,
                wordSpacing: 1,
                letterSpacing: 1),
          ),
        ),
        // body: Column(
        //   children: [
        //     Text("${m1.phone}"),
        //   ],
        // ),
        body: Container(
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.center,
                  child: ElevatedButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text("Enter your Details"),
                            content: Column(
                              // mainAxisAlignment: MainAxisAlignment.,
                              children: [
                                TextField(
                                  controller: txtname,
                                  decoration:
                                      InputDecoration(hintText: 'enter name'),
                                ),
                                TextField(
                                  controller: txtEmail,
                                  decoration:
                                      InputDecoration(hintText: 'enter email'),
                                ),
                                TextField(
                                  controller: txtaddres,
                                  decoration: InputDecoration(
                                      hintText: 'enter Address'),
                                ),
                                TextField(
                                  controller: txtphone,
                                  decoration:
                                      InputDecoration(hintText: 'enter Phone'),
                                ),
                              ],
                            ),
                            actions: [
                              TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Text("CANCEL")),
                              TextButton(
                                  onPressed: () {
                                    String;
                                    Navigator.of(context).pop();
                                  },
                                  child: Text("ADD"))
                            ],
                          );
                        },
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                          horizontal: 40.0, vertical: 20.0),
                      primary: Colors.white10,
                    ),
                    child: Text(
                      "Add update ",
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
