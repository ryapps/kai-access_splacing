import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AppNavigation extends StatefulWidget {
  AppNavigation(this._page);
  int _page;
  @override
  State<AppNavigation> createState() => _AppNavigationState();
}

class _AppNavigationState extends State<AppNavigation> {

  void _onTappedItem(int index) {

    if (index == 0) {
      Navigator.pushReplacementNamed(context, '/');
    } else if (index == 1) {
      Navigator.pushReplacementNamed(context, '/kereta');
    } else if (index == 2) {
      Navigator.pushReplacementNamed(context, '/tiket');
    } else if (index == 3) {
      Navigator.pushReplacementNamed(context, '/promo');
    } else if (index == 4) {
      Navigator.pushReplacementNamed(context, '/account');
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: true,
        selectedItemColor: Colors.blue,
        selectedLabelStyle: TextStyle(color: Color(0xFF000000)),
        unselectedItemColor: Colors.grey,
        currentIndex: widget._page,
        onTap: _onTappedItem,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.train_outlined),
            label: 'Kereta',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.airplane_ticket), label: 'Tiket Saya'),
          BottomNavigationBarItem(icon: Icon(Icons.discount), label: 'Promo'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Akun'),
        ]);
  }
}
