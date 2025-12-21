import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lima_212_62e/home_page.dart';
import 'package:lima_212_62e/widgets/reusable.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController ecntrller = TextEditingController();
  TextEditingController pcntrller = TextEditingController();
  TextEditingController cpcntrller = TextEditingController();

  String txt = "";
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
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
                  
                  children: [
                    Expanded(
                      child: Image.asset(
                        "assets/images/Book Lover Wallpaper.jpeg",
                        width: 450,
                        height: 495,
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
                                "Create an Account",
                                style: GoogleFonts.roboto(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.brown.shade700,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(height: 50),

                              InputField(
                                controller: ecntrller,
                                keyboardType: TextInputType.emailAddress,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return "Enter Email";
                                  }
                                  else if (!RegExp(
                                    r'^[\w.+-]+@[\w-]+\.[\w.-]+$',
                                  ).hasMatch(value)) {
                                    return "Invalid Format";
                                  }
                                  return null;
                                },
                                hint: "Enter  your Email",
                                label: "Email",
                                icon: Icons.email,
                                obscure: false,
                              ),
                              SizedBox(height: 25),

                              InputField(
                                controller: pcntrller,
                                keyboardType: TextInputType.text,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return "Enter Password";
                                  } 
                                  else if (!RegExp(r'^[a-zA-Z0-9!@#$%^&*]{8,}$').hasMatch(value)) {
                                    return "Invalid Format";
                                  }
                                  return null;
                                },
                                hint: "Enter  your Password",
                                label: "Password",
                                icon: Icons.lock,
                                obscure: true,
                              ),
                              SizedBox(height: 25),

                              InputField(
                                controller: cpcntrller,
                                keyboardType: TextInputType.text,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return "Enter Password Again";
                                  }
                                  else if(value!=pcntrller.text){
                                    return "Password not matched";
                                  }
                                  return null;
                                },
                                hint: "Re-enter your Password",
                                label: "Confirm Password",
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
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage1()));
                                  }
                                },
                                child: Text(
                                  "Register",
                                  style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.brown.shade900,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                              SizedBox(height: 15),
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
