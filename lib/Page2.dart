import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:invoicegenretor/Modal/Modalclass.dart';
import 'package:invoicegenretor/insert_update/update_delete.dart';

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

  TextEditingController txt_pname = TextEditingController();
  TextEditingController txt_price = TextEditingController();
  TextEditingController txt_qty = TextEditingController();

  List<InsertModel> myproduct = [];

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
        body: Column(
          children: [
            // Container(
            //   decoration: BoxDecoration(
            //     border: Border.all(color: Colors.black26,width: 1),
            //       color: Colors.white12,
            //       borderRadius: BorderRadius.all(Radius.circular(10))),
            //   width: double.infinity,
            //
            //   alignment: Alignment.topLeft,
            //   child: Padding(
            //     padding: const EdgeInsets.all(15),
            //     child: Column(
            //       children: [
            //         Text("Your details:"),
            //         Text(
            //           "From:",
            //           style: GoogleFonts.abrilFatface(
            //               color: Colors.grey, fontSize: 15),
            //         ),
            //         Text("${m1.nameproduct}"),
            //         Text("${m1.Email}"),
            //         Text("${m1.addres}"),
            //         Text("${m1.phone}"),
            //       ],
            //     ),
            //   ),
            // ),
            SizedBox(
              height: 10,
            ),

            Container(
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
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    TextField(
                                      controller: txtname,
                                      decoration: InputDecoration(
                                          hintText: 'enter name'),
                                    ),
                                    TextField(
                                      controller: txtEmail,
                                      decoration: InputDecoration(
                                          hintText: 'enter email'),
                                    ),
                                    TextField(
                                      controller: txtaddres,
                                      decoration: InputDecoration(
                                          hintText: 'enter Address'),
                                    ),
                                    TextField(
                                      controller: txtphone,
                                      decoration: InputDecoration(
                                          hintText: 'enter Phone'),
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
          ],
        ),
      ),
    );
  }

  Widget MyProduct(int Index, String? pname, String? price, String? qnt) {
    return ListTile(
      leading: Text(
        "$Index",
        style: TextStyle(fontSize: 18),
      ),
      title: Text("$pname"),
      subtitle: Text("$price"),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text("$qnt"),
          IconButton(
            onPressed: () {
              txt_pname = TextEditingController(text: "$pname");
              txt_price = TextEditingController(text: "$price");
              txt_qty = TextEditingController(text: "$qnt");
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: const Text('Enter Product Detail'),
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        TextField(
                          controller: txt_pname,
                          decoration: const InputDecoration(
                            hintText: 'Enter product name',
                          ),
                        ),
                        TextField(
                          controller: txt_price,
                          decoration: const InputDecoration(
                            hintText: 'Enter Price',
                          ),
                        ),
                        TextField(
                          controller: txt_qty,
                          decoration: const InputDecoration(
                            hintText: 'Enter QTY',
                          ),
                        ),
                      ],
                    ),
                    actions: <Widget>[
                      TextButton(
                        child: const Text('CANCEL'),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                      TextButton(
                        child: const Text('UPDATE'),
                        onPressed: () {
                          setState(() {
                            InsertModel p1 = InsertModel(
                              nameproduct: txt_pname.text,
                              Price: txt_price.text,
                              qty: txt_qty.text,
                            );
                            myproduct[Index] = p1;
                          });
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  );
                },
              );
            },
            icon: Icon(
              Icons.edit,
              color: Colors.green.shade300,
            ),
          ),
          IconButton(
            onPressed: () {
              setState(
                () {
                  myproduct.removeAt(Index);
                },
              );
            },
            icon: Icon(
              Icons.delete,
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}
