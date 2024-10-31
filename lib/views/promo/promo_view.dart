import 'package:flutter/material.dart';
import 'package:kai_access/widgets/app_navigation.dart';

class PromoView extends StatefulWidget {
  const PromoView({super.key});

  @override
  State<PromoView> createState() => _PromoViewState();
}

class _PromoViewState extends State<PromoView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: AppNavigation(3),
    );
  }
}