import 'package:flutter/material.dart';
import 'package:kai_access/widgets/app_navigation.dart';
import 'package:kai_access/widgets/widget_home.dart';
import 'package:kai_access/widgets/widget_kereta.dart';

class KeretaView extends StatefulWidget {
  const KeretaView({super.key});

  @override
  State<KeretaView> createState() => _KeretaViewState();
}

class _KeretaViewState extends State<KeretaView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar:
        AppBar(
          
          backgroundColor: Colors.white,
          title: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Kereta', style: TextStyle(fontWeight: FontWeight.bold)),
              Text(
                'Layanan kereta dari KAI',
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
            ],
          ),
          bottom: PreferredSize(preferredSize: Size.fromHeight(130), 
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 16),
            child: MainService())
          ),
        ),
      body: 
        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container( 
            margin: EdgeInsets.symmetric(horizontal: 16),
            child: 
          SizedBox(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                verticalDirection: VerticalDirection.down,
                children: [
                  Text('Tujuan Populer',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                    SizedBox(height: 20,),               
                    TujuanPopuler()
                ],
              ),
            ),
          ),),
        ),
      
      bottomNavigationBar: AppNavigation(1),
    );
  }
}
