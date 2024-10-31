import 'package:flutter/material.dart';
import 'package:kai_access/widgets/app_navigation.dart';

class AccountView extends StatefulWidget {
  const AccountView({super.key});

  @override
  State<AccountView> createState() => _AccountViewState();
}

class _AccountViewState extends State<AccountView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: AppNavigation(4),
    );
  }
}
