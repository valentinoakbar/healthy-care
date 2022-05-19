import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:healty_care/screens/signin_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: "AIzaSyBiaXq6NB-LCtZdi-qENrNnIMGEJn-Moug", // Your apiKey
      appId: "1:376614156641:android:5ece55678776055968ed20", // Your appId
      messagingSenderId: "376614156641", // Your messagingSenderId
      projectId: "healty-care-a6055",
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const SignInScreen(),
    );
  }
}
