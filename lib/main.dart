import 'package:finance/home/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType)  {
          return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Home(),
      );
      });
   
    // return ResponsiveSizer(
    //   builder: (context, orientation, type) {
    //     return MaterialApp(
    //       title: 'Flutter Demo',
    //       debugShowCheckedModeBanner: false,
    //       theme: ThemeData(
    //         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    //         useMaterial3: true,
    //       ),
    //       home: const HomePage(),
    //     );
    //   }
    // );
  }
}

