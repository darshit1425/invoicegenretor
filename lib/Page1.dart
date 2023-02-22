import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Modal/Modalclass.dart';

class screen1 extends StatefulWidget {
  const screen1({Key? key}) : super(key: key);

  @override
  State<screen1> createState() => _screen1State();
}

class _screen1State extends State<screen1> {
  TextEditingController txtname = TextEditingController();
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtaddres = TextEditingController();
  TextEditingController txtphone = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text("invoice zenretor",
              style: GoogleFonts.aBeeZee(
                  fontSize: 26,
                  color: Colors.black,
                  wordSpacing: 1,
                  letterSpacing: 1)),
        ),
        body: Padding(
          padding: EdgeInsets.all(10),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    " From",
                    style: GoogleFonts.albertSans(
                      fontSize: 21,
                    ),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                TextFormField(
                  controller: txtname,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),
                    hintText: 'Enter a Name term',
                    labelText: "name",
                    labelStyle: TextStyle(fontSize: 19, color: Colors.grey),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.black, width: 1.5),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: txtEmail,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),
                    hintText: 'Ex. xyz@gmail.com',
                    labelText: "Email",
                    labelStyle: TextStyle(fontSize: 19, color: Colors.grey),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.black, width: 1.5),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: txtaddres,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),
                    hintText: 'Ex. 20 surat Gujrat',
                    labelText: "Address",
                    labelStyle: TextStyle(fontSize: 19, color: Colors.grey),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.black, width: 1.5),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: txtphone,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    hintText: ' Ex. +91 987654321',
                    labelText: "Phone",
                    labelStyle: TextStyle(fontSize: 19, color: Colors.grey),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.black, width: 1.5),
                    ),
                  ),
                ),
                SizedBox(
                  height: 100,
                ),
                ElevatedButton(
                  onPressed: () {
                    Modalclass m1 = Modalclass(addres: txtaddres.text,Email: txtEmail.text,name: txtname.text,phone: txtphone.text);
                    Navigator.pushNamed(context, '2',arguments: m1);
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                        horizontal: 40.0, vertical: 20.0),
                    primary: Colors.white10,
                  ),
                  child: Text(
                    "next",
                    style: TextStyle(color: Colors.black, fontSize: 18),
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
