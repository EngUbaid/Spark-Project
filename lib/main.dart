import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spark/View/drawer%20screen/drawre_Screen.dart';
import 'package:spark/common/iconchanges.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => navigationprovider())
      ],
      child:const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Spark",
        home: DrwerScreen(),
      ),
    );
  }
}



