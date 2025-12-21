import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InputField extends StatelessWidget {
  final controller, keyboardType, validator,hint, label, icon, obscure;
  const InputField({
    super.key,
    required this.controller,
    required this.keyboardType,
    required this.validator,
    //required this.cursor,
    required this.hint,
    required this.label,
    required this.icon,
    required this.obscure,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscure,
      keyboardType: keyboardType,
      validator: validator,
      cursorColor: Colors.brown.shade900,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: GoogleFonts.roboto(
          color: Colors.brown.shade900,
          fontWeight: FontWeight.bold,
        ),

        labelText: label,
        labelStyle: GoogleFonts.roboto(
          color: Colors.brown.shade900,
          fontWeight: FontWeight.bold,
        ),
        floatingLabelStyle: GoogleFonts.roboto(
  color: Colors.brown.shade900,
  fontWeight: FontWeight.bold,
),
        
        suffixIcon:Icon(icon,color: Colors.brown.shade900,),

        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.brown.shade900, width: 2),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.brown.shade900, width: 2),
        ),
      ),
    );
  }
}
