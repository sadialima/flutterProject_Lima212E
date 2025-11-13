import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lima_212_62e/home_page.dart';
import 'package:lima_212_62e/page3.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown.shade100,
      appBar: AppBar(
        title: Text(
          "New Page",

          style: GoogleFonts.roboto(
            color: Colors.brown.shade900,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.brown.shade400,
        foregroundColor: Colors.brown.shade900,
        actions: [
          IconButton(
            onPressed: () {},
            tooltip: "Search",
            icon: Icon(Icons.search),
            color: Colors.brown.shade900,
          ),
          IconButton(
            onPressed: () {},
            tooltip: "Settings",
            icon: Icon(Icons.settings),
            color: Colors.brown.shade900,
          ),
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "This is the second page",
                style: GoogleFonts.roboto(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.brown.shade900,
                ),
              ),
              Divider(),
              // Text(
              //   "Things We will learn:",
              //   style: GoogleFonts.roboto(
              //     fontSize: 25,
              //     color: Colors.brown.shade900,
              //   ),
              // ),
              Container(
                width: 300,
                height: 300,
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(40),
                // alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.brown.shade400,
                  border: Border.all(color: Colors.brown.shade900),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: DefaultTextStyle(
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    color: Colors.brown.shade900,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("*Container"),
                      Text("*Decoration"),
                      Text("*Alignment"),
                      Text("*Border"),
                      Text("*Margin"),
                      Text("*Padding"),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 200,
                width: 300,
                child: Card(
                  color: Colors.brown.shade500,
                  elevation: 30,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        DefaultTextStyle(
                          style: GoogleFonts.poppins(
                            fontSize: 20,
                            color: Colors.brown.shade900,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("*Sized box"),
                              Text("*card"),
                              Text("*padding"),
                              Text("*style"),
                              Text("*Buttons"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(width: 50),
                  TextButton(
                    onPressed: () {},

                    style: TextButton.styleFrom(
                      elevation: 40,
                      side: BorderSide(color: Colors.brown.shade900, width: 3),
                      fixedSize: Size(150, 40),
                      backgroundColor: Colors.brown.shade400,
                      foregroundColor: Colors.brown.shade900,
                    ),

                    child: Text(
                      "Exit",
                      style: GoogleFonts.roboto(fontSize: 18),
                    ),
                  ),
                  SizedBox(width: 50),
                  OutlinedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage1()),
                      );
                    },

                    style: OutlinedButton.styleFrom(
                      elevation: 50,
                      side: BorderSide(color: Colors.brown.shade900, width: 3),
                      fixedSize: Size(250, 40),
                      backgroundColor: Colors.brown.shade300,
                      foregroundColor: Colors.brown.shade800,
                    ),

                    child: Text(
                      "Back to Home page",
                      style: GoogleFonts.roboto(fontSize: 18),
                    ),
                  ),
                  SizedBox(width: 50),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Page3()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      side: BorderSide(color: Colors.brown.shade900, width: 3),
                      elevation: 50,
                      fixedSize: Size(150, 40),
                      backgroundColor: Colors.brown.shade400,
                    ),

                    child: Text(
                      "Next page",
                      style: GoogleFonts.roboto(
                        color: Colors.brown.shade900,
                        fontSize: 15,
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
