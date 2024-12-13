import 'package:evaluacion_2/screens/home.dart';
import 'package:evaluacion_2/screens/login.dart';
import 'package:evaluacion_2/screens/register.dart';
import 'package:evaluacion_2/screens/welcome.dart';
import 'package:firebase_core/firebase_core.dart';

import 'firebase_options.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => WelcomeScreen(),
        '/login': (context) => LoginScreen(),
        '/catalogo': (context) => HomeScreen(),
        '/register': (context) => RegisterScreen(),
      },
    );
  }
}
