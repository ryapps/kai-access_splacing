import 'package:flutter/material.dart';

class TransaksiView extends StatefulWidget {
  const TransaksiView({super.key});

  @override
  State<TransaksiView> createState() => _TransaksiViewState();
}

class _TransaksiViewState extends State<TransaksiView> {
  @override
  Widget build(BuildContext context) {
    final arg = ModalRoute.of(context)!.settings.arguments as List;
    return Scaffold(
        appBar: AppBar(
          title: Text('Halaman Transaksi'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("ID :" + arg[0]["id"].toString()),
            Text("Nama Tiket : ${arg[0]["nama_tiket"]}"),
            Text("Harga : ${arg[0]["harga"].toString()}")
          ],
        ));
  }
}
