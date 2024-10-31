import 'package:flutter/material.dart';
import 'package:kai_access/views/home/home_page.dart';
import 'package:kai_access/views/account/account_view.dart';
import 'package:kai_access/views/kereta/kereta_view.dart';
import 'package:kai_access/views/login/login_view.dart';
import 'package:kai_access/views/promo/promo_view.dart';
import 'package:kai_access/views/ticket/ticket_view.dart';
import 'package:kai_access/views/transaksi_view.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily:'Montserrat', 
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/home': (context) => HomePage(),
        '/login': (context) => LoginView(),
        '/account': (context) => AccountView(),
        '/kereta': (context) => KeretaView(),
        '/transaksi': (context) => TransaksiView(),
        '/tiket': (context) => TicketView(),
        '/promo': (context) => PromoView()
      },
      home: HomePage(),
    );
  }
}


