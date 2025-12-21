import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Converter extends StatefulWidget {
  const Converter({super.key});

  @override
  State<Converter> createState() => _ConverterState();
}

class _ConverterState extends State<Converter> {
  TextEditingController a = TextEditingController();
  TextEditingController b = TextEditingController();
  TextEditingController otptcntlr = TextEditingController();
  String op = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown.shade100,
      appBar: AppBar(
        title: Text(
          "Simple Calculator",

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
          height: 400,
          width: 310,
          child: Card(
            color: Colors.brown.shade400,
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  SizedBox(height: 20),
                  TextFormField(
                    controller: a,
                    keyboardType: TextInputType.number,
                    cursorColor: Colors.brown.shade900,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 10,
                      ),
                      hintText: "Enter First Number",
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.brown.shade900,
                      ),
                      labelText: "First Number ",

                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.brown.shade900,
                          width: 2,
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.brown.shade900,
                          width: 2,
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
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(5, 5),
                          side: BorderSide(
                            color: Colors.brown.shade900,
                            width: 2,
                          ),
                          backgroundColor: Colors.brown.shade500,
                          foregroundColor: Colors.brown.shade900,
                        ),

                        onPressed: () {
                          setState(() {
                            op = '+';
                          });
                        },
                        child: Text(
                          "+",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(5, 5),
                          side: BorderSide(
                            color: Colors.brown.shade900,
                            width: 2,
                          ),
                          backgroundColor: Colors.brown.shade500,
                          foregroundColor: Colors.brown.shade900,
                        ),
                        onPressed: () {
                          setState(() {
                            op = '-';
                          });
                        },
                        child: Text(
                          "-",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(5, 5),
                          side: BorderSide(
                            color: Colors.brown.shade900,
                            width: 2,
                          ),
                          backgroundColor: Colors.brown.shade500,
                          foregroundColor: Colors.brown.shade900,
                        ),
                        onPressed: () {
                          setState(() {
                            op = '*';
                          });
                        },
                        child: Text(
                          "x",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(5, 5),
                          side: BorderSide(
                            color: Colors.brown.shade900,
                            width: 2,
                          ),
                          backgroundColor: Colors.brown.shade500,
                          foregroundColor: Colors.brown.shade900,
                        ),
                        onPressed: () {
                          setState(() {
                            op = '/';
                          });
                        },
                        child: Text(
                          "/",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    controller: b,
                    keyboardType: TextInputType.number,
                    cursorColor: Colors.brown.shade900,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 10,
                      ),
                      hintText: "Enter Second Number",
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.brown.shade900,
                      ),
                      labelText: "Second Number ",

                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.brown.shade900,
                          width: 2,
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.brown.shade900,
                          width: 2,
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
                    ),
                  ),
                  SizedBox(height: 30),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      side: BorderSide(color: Colors.brown.shade900, width: 2),
                      backgroundColor: Colors.brown.shade500,
                      foregroundColor: Colors.brown.shade900,
                    ),
                    onPressed: () {
                      double n1 = double.tryParse(a.text) ?? 0;
                      double n2 = double.tryParse(b.text) ?? 0;
                      double res = 0;
                      
                      if (op == '+') {
                        res = n1 + n2;
                      } else if (op == '-') {
                        res = n1 - n2;
                      } else if (op == '*') {
                        res = n1 * n2;
                      } else {
                        res = n1 / n2;
                      }
                      setState(() {
                        otptcntlr.text = res.toString();
                      });
                    },

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
