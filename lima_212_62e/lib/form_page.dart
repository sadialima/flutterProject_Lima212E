// ignore: file_names
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  TextEditingController inptcntlr = TextEditingController();
  TextEditingController otptcntlr = TextEditingController();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.brown.shade100,
      appBar: AppBar(
        title: Text(
          "Form",

          style: GoogleFonts.roboto(
            color: Colors.brown.shade900,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.brown.shade400,
        foregroundColor: Colors.brown.shade900,
      ),
      body: Center(
        child: SizedBox(
          height: 300,
          width: 300,
          child: Card(
            color: Colors.brown.shade400,
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  SizedBox(height: 20),
                  TextFormField(
                    controller: inptcntlr,
                    keyboardType: TextInputType.numberWithOptions(
                      decimal: true,
                      signed: true,
                    ),
                    cursorColor: Colors.brown.shade900,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.brown.shade300,
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 20,
                        horizontal: 20,
                      ),
                      hintText: "Enter Input...",
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.brown.shade900,
                      ),
                      labelText: "Write Something...",

                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.brown.shade900,
                          width: 3,
                        ),
                      ),
                      labelStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.brown.shade900,
                      ),
                      prefixIcon: Icon(
                        Icons.edit,
                        color: Colors.brown.shade900,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.brown.shade900,
                          width: 3,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      side: BorderSide(color: Colors.brown.shade900, width: 2),
                      backgroundColor: Colors.brown.shade500,
                      foregroundColor: Colors.brown.shade900,
                    ),
                    onPressed: () {},
                    child: Text(
                      "Enter",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  TextFormField(
                    controller: otptcntlr,
                    readOnly: true,
                    showCursor: false,
                    decoration: InputDecoration(
                      
                      filled: true,
                      fillColor: Colors.brown.shade300,
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 20,
                        horizontal: 20,
                      ),
                      labelText: "Output",
                      labelStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.brown.shade900,
                      ),
                      prefixIcon: Icon(
                        Icons.output,
                        color: Colors.brown.shade900,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.brown.shade900,
                          width: 3,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.brown.shade900,
                          width: 3,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
