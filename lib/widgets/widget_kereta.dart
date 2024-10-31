import 'package:flutter/material.dart';
import 'package:kai_access/models/data.dart';

class TujuanPopuler extends StatefulWidget {
  const TujuanPopuler({super.key});

  @override
  State<TujuanPopuler> createState() => _TujuanPopulerState();
}

class _TujuanPopulerState extends State<TujuanPopuler> {
  @override
  Widget build(BuildContext context) {
    return Row(
      verticalDirection: VerticalDirection.up,
        children: <Widget>[
          Expanded(
              child: SizedBox(
                  height: 1000,
                  child: ListView.separated(
                      scrollDirection: Axis.vertical,
                      itemBuilder: (BuildContext ctxt, int index) {
                        String key = kota.keys.elementAt(index);
                        String value = kota[key]!;
                        return new Container(
                            width: MediaQuery.of(context).size.width * 0.9,
                            padding: EdgeInsets.symmetric(vertical: 15,horizontal: 15),
                            height: 130,
                            decoration: BoxDecoration(
                              image: DecorationImage(image: AssetImage('assets/img/${value}'),fit: BoxFit.fill,alignment: Alignment.center),
                              borderRadius: BorderRadius.circular(15)
                              ),
                            child: Text(key,style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),),
                            );
                      },
                      separatorBuilder: (BuildContext context, int index) =>
                          const SizedBox(height: 10,),
                      itemCount: kota.length)))
        ],
      );
  }
}
