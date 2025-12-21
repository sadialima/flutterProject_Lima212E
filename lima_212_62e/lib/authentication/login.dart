import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lima_212_62e/authentication/register.dart';
//import 'package:lima_212_62e/home_page.dart';
import 'package:lima_212_62e/widgets/reusable.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController ecntrller = TextEditingController();
  TextEditingController pcntrller = TextEditingController();
  String txt = "";
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          // image:DecorationImage(
          //   image: AssetImage("assets/images/background.jpeg"),
          //   fit:BoxFit.cover,
          // )
          gradient: LinearGradient(
            colors: [
              Colors.brown.shade900,
              Colors.brown.shade300,
              Colors.brown.shade500,
              Colors.brown.shade700,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: SizedBox(
              height: 500,
              width: 800,
              child: Card(
                color: Colors.white,
                child: Row(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Image.asset(
                        "assets/images/butterfly.jpeg",
                        width: 450,
                        height: 500,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      width: 2,
                      height: 500,
                      color: Colors.brown.shade900,
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(20),
                        child: Form(
                          key: _formKey,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            //crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Text(
                                "Login",
                                style: GoogleFonts.roboto(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.brown.shade700,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(height: 50),
                              // TextFormField(

                              //   cursorColor: Colors.brown.shade900,
                              //   decoration: InputDecoration(

                              //     labelText: "Email",
                              //     labelStyle: GoogleFonts.roboto(
                              //       color: Colors.brown.shade900,
                              //       fontWeight: FontWeight.bold,
                              //     ),
                              //     suffixIcon: Icon(Icons.email,color: Colors.brown.shade900,),
                              //     hintText: "Enter your E-mail",
                              //     hintStyle: GoogleFonts.roboto(
                              //       color: Colors.brown.shade900,
                              //       fontWeight: FontWeight.bold,
                              //     ),

                              //     enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.brown.shade900,width: 2)),
                              //     focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.brown.shade900,width: 2)),

                              //     //contentPadding: EdgeInsets.symmetric(vertical:20,horizontal:15),
                              //   ),
                              // ),
                              InputField(
                                controller: ecntrller,
                                keyboardType: TextInputType.emailAddress,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return "Enter Email";
                                  }

                                  return null;
                                },
                                hint: "Enter  your Email",
                                label: "Email",
                                icon: Icons.email,
                                obscure: false,
                              ),
                              SizedBox(height: 25),
                              // TextFormField(
                              //   obscureText: true,
                              //    cursorColor: Colors.brown.shade900,
                              //   decoration: InputDecoration(
                              //     labelText: "Password",
                              //     labelStyle: GoogleFonts.roboto(
                              //       color: Colors.brown.shade900,
                              //       fontWeight: FontWeight.bold,
                              //     ),
                              //     hintText: "Enter your Password",
                              //     hintStyle: GoogleFonts.roboto(
                              //       color: Colors.brown.shade900,
                              //       fontWeight: FontWeight.bold,
                              //     ),
                              //     suffixIcon: Icon(Icons.lock,color: Colors.brown.shade900,),
                              //     enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.brown.shade900,width: 2)),
                              //     focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.brown.shade900,width: 2)),

                              //   ),
                              // ),
                              InputField(
                                controller: pcntrller,
                                keyboardType: TextInputType.text,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return "Enter Password";
                                  }
                                  return null;
                                },
                                hint: "Enter  your Password",
                                label: "Password",
                                icon: Icons.lock,
                                obscure: true,
                              ),
                              SizedBox(height: 30),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.brown.shade300,
                                  fixedSize: Size(250, 40),
                                  side: BorderSide(
                                    color: Colors.brown.shade900,
                                    width: 2,
                                  ),
                                ),

                                onPressed: () {
                                  if (_formKey.currentState!.validate()) {
                                    txt = ecntrller.text;
                                  }
                                },
                                child: Text(
                                  "Login",
                                  style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.brown.shade900,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                              SizedBox(height: 15),

                              // if (errMsg.isNotEmpty)
                              //   Text(
                              //     errMsg,
                              //     style: TextStyle(
                              //       color: const Color.fromARGB(255, 108, 5, 5),
                              //       fontWeight: FontWeight.bold,
                              //     ),
                              //   ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Register(),
                                    ),
                                  );
                                },
                                child: Row(
                                  children: [
                                    Text(
                                      "Don't have an account? ",
                                       style: GoogleFonts.roboto(
                                        textStyle: TextStyle(
                                          fontSize: 14,
                                          color: Colors.brown.shade800,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      "Register",
                                      style: GoogleFonts.roboto(
                                        textStyle: TextStyle(
                                          fontSize: 16,
                                          color: Colors.brown.shade900,
                                          fontWeight: FontWeight.bold,
                                          decoration: TextDecoration.underline,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
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
      ),
    );
  }
}
