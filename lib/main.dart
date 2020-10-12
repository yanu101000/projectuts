import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:list_wisata/screens/aboutus_screen.dart';
import 'package:list_wisata/screens/main_screen.dart';
import 'package:list_wisata/screens/register_screen.dart';
import 'package:list_wisata/screens/userdisplayname_screen.dart';
import 'package:list_wisata/screens/welcome_screen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        RegisterScreen.id: (context) => RegisterScreen(),
        MainScreen.id: (context) => MainScreen(),
        UserDislayNameScreen.id: (context) => UserDislayNameScreen(),
        AboutUsScreen.id: (context) => AboutUsScreen()
      },
    );
  }
}