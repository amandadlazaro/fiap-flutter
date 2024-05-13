import 'package:fiap_flutter/config/theme.dart';
import 'package:fiap_flutter/controllers/imc_controller.dart';
import 'package:fiap_flutter/pages/imc_page.dart';
import 'package:fiap_flutter/pages/home_page.dart';
import 'package:fiap_flutter/pages/localization_page.dart';
import 'package:fiap_flutter/pages/medical_history_page.dart';
import 'package:fiap_flutter/pages/petshop_page.dart';
import 'package:fiap_flutter/pages/result_imc_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => IMCController(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: themeData(context),
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(),
        '/medical-history': (context) => MedicalHistoryPage(),
        '/localization': (context) => LocalizationPage(),
        '/petshops': (context) => PetShopPage(),
        '/imc': (context) => InsertData(),
        '/result': (context) => const ResultIMC()
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => HomePage();
}
