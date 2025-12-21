import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lima_212_62e/container_page.dart';
import 'package:lima_212_62e/converter.dart';
import 'package:lima_212_62e/form_page.dart';

class HomePage1 extends StatelessWidget {
  const HomePage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown.shade100,
      appBar: AppBar(
        //leading: Icon(Icons.home),
        iconTheme: IconThemeData(color: Colors.brown.shade900),
        backgroundColor: Colors.brown.shade400,
        foregroundColor: Colors.white,
        title: Text(
          "Lima's App",
          style: GoogleFonts.roboto(
            color: Colors.brown.shade900,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
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
      drawer: NavigationDrawer(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(
              "Sadia Lima",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            accountEmail: Text(
              "sadialima@gmail.com",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            decoration: BoxDecoration(color: Colors.brown.shade500),
          ),

          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage1()),
              );
            },
            title: Text("Home page"),
          ),
          Divider(),
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Page2()),
              );
            },
            title: Text("Container page"),
          ),
          Divider(),
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Page3()),
              );
            },
            title: Text("Form"),
          ),
          Divider(),
          
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Converter()),
              );
            },
            title: Text("Converter"),
          ),
          Divider()
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: "Add",
        backgroundColor: Colors.brown.shade800,
        foregroundColor: Colors.white,
        child: Icon(Icons.add),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              "Sadia Sultana Lima",

              style: GoogleFonts.lobster(
                textStyle: TextStyle(
                  fontSize: 30,
                  color: Colors.brown.shade800,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text(
              "0182320012101212",
              style: GoogleFonts.poppins(
                textStyle: TextStyle(),
                fontSize: 30,
                color: Colors.brown.shade800,
                fontWeight: FontWeight.bold,
              ),
            ),
            Icon(Icons.favorite, color: Colors.brown.shade800, size: 50),
            Divider(),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                Column(
                  children: [
                    Text(
                      "I love Nature",
                      style: GoogleFonts.roboto(
                        textStyle: TextStyle(),
                        fontSize: 30,
                        color: Colors.brown.shade800,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Image.asset(
                      'assets/images/undefined.jpeg',
                      height: 400,
                      width: 200,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
                SizedBox(width: 5),
                Column(
                  children: [
                    Text(
                      "I love Books",
                      style: GoogleFonts.roboto(
                        textStyle: TextStyle(),
                        fontSize: 30,
                        color: Colors.brown.shade800,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Image.asset(
                      'assets/images/Book Lover Wallpaper.jpeg',
                      height: 400,
                      width: 200,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
                SizedBox(width: 5),
                Column(
                  children: [
                    Text(
                      "I love Coffee",
                      style: GoogleFonts.roboto(
                        textStyle: TextStyle(),
                        fontSize: 30,
                        color: Colors.brown.shade800,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Image.asset(
                      'assets/images/download.jpeg',
                      height: 400,
                      width: 200,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),

                //Image.network('https://unsplash.com/photos/a-pile-of-books-sitting-on-top-of-a-table-_yv-QgTlGp0', fit: BoxFit.cover,),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Page2()),
                );
              },
              style: ElevatedButton.styleFrom(
                elevation: 50,
                fixedSize: Size(200, 40),
                side: BorderSide(color: Colors.brown.shade900, width: 2),
                backgroundColor: Colors.brown.shade400,
              ),

              child: Text(
                "New page",
                style: GoogleFonts.poppins(
                  color: Colors.brown.shade900,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
