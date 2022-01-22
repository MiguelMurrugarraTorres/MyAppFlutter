import 'package:flutter/material.dart';
import 'package:untitled/src/login/login_page.dart';
import 'package:untitled/src/utils/my_colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
   const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override

  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Delivery App Flutter',
        debugShowCheckedModeBanner: false,
        initialRoute: 'login',
        routes: {
        'login' : (BuildContext context) => LoginPage()
        },

        theme: ThemeData(
           //colorScheme: ColorScheme.light( primary: Color(0xffcf3d10)
            //)
           colorScheme: ColorScheme.light(primary: MyColors.primaryColor)
           //colorScheme: ColorScheme.light( primary: Colors.amberAccent,
           //)
         ),
    );
  }
}

