import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context,'/home');
            },
            child: Text('Kembali')
            ),
        ElevatedButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context,'/account');
            },
            child: Text('Akun')
            ),
        ElevatedButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context,'/transaksi',arguments:[
                {
                "id": 1,
                "nama_tiket": "lokal",
                "harga":25000
                },
                {
                "id": 2,
                "nama_tiket": "antar kota",
                "harga":30000
                },
              ] );
            },
            child: Text('Transaksi')
            ),
      ],
    );
  }
}
