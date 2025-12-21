import 'package:flutter/material.dart';
import 'package:lima_212_62e/authentication/authen.dart';
//import 'package:lima_212_62e/home_page.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: 'https://rdgvtavtfocjkhudfpzc.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InJkZ3Z0YXZ0Zm9jamtodWRmcHpjIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NjYwMzMwMTgsImV4cCI6MjA4MTYwOTAxOH0.TIqmRVLI2thw1s9McDeZbq_ejU_NPKs1Ljb_0I0y7lY' );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //theme: ThemeData.dark(),
      home: AuthGate(),
      //home:HomePage1()
    );
  }
}


