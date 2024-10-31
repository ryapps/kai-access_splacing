import 'package:flutter/material.dart';
import 'package:kai_access/widgets/app_navigation.dart';

class TicketView extends StatefulWidget {
  const TicketView({super.key});

  @override
  State<TicketView> createState() => _TicketViewState();
}

class _TicketViewState extends State<TicketView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: AppNavigation(2),
    );
  }
}