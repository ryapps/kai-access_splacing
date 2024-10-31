import 'package:flutter/material.dart';
import 'package:kai_access/models/data.dart';



class MainService extends StatefulWidget {
  const MainService({super.key});

  @override
  State<MainService> createState() => _MainServiceState();
}

class _MainServiceState extends State<MainService> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
            child: SizedBox(
                height: 125.4,
                child: GridView.builder(
                    padding: EdgeInsets.symmetric(vertical: 8),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 5,
                        crossAxisSpacing: 1,
                        mainAxisSpacing: 10,
                        mainAxisExtent: 100),
                    itemBuilder: (BuildContext ctxt, int index) {
                      String key = service.keys.elementAt(index);
                      String value = service[key]!;
                      return new Container(
                          width: 60,
                          height: 100,
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/img/${value}.png',
                                width: 55,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Expanded(
                                  child: Text(
                                key,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Montserrat',
                                    fontSize: 11,
                                    fontWeight: FontWeight.w500),
                                textAlign: TextAlign.center,
                              )),
                            ],
                          ));
                    },
                    itemCount: service.length - 5)))
      ],
    );
  }
}
class SecondService extends StatefulWidget {
  const SecondService({super.key});

  @override
  State<SecondService> createState() => _SecondServiceState();
}

class _SecondServiceState extends State<SecondService> {
  @override
  Widget build(BuildContext context) {
    return Row(
        children: <Widget>[
          Expanded(
              child: SizedBox(
                  height: 125,
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext ctxt, int index) {
                        String key = service.keys.elementAt(index + 5);
                        String value = service[key]!;
                        return new Container(
                            width: 69,
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/img/${value}.png',
                                  width: 55,
                                  fit: BoxFit.cover,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Expanded(
                                        child: Text(
                                      key,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: 'Montserrat',
                                          fontSize: 11,
                                          fontWeight: FontWeight.w500),
                                      textAlign: TextAlign.center,
                                    )),
                                  ],
                                )
                              ],
                            ));
                      },
                      separatorBuilder: (BuildContext context, int index) =>
                          const Divider(),
                      itemCount: service.length - 5)))
        ],
      );
  }
}

class ServiceAddition extends StatefulWidget {
  const ServiceAddition({super.key});

  @override
  State<ServiceAddition> createState() => _ServiceAdditionState();
}

class _ServiceAdditionState extends State<ServiceAddition> {
  @override
  Widget build(BuildContext context) {
    return Row(
        children: <Widget>[
          Expanded(
              child: SizedBox(
                  height: 125.4,
                  child: GridView.builder(

                    padding: EdgeInsets.symmetric(vertical: 8,horizontal: 40),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4,                      
                          crossAxisSpacing: 1,
                          mainAxisExtent: 100),
                      itemBuilder: (BuildContext ctxt, int index) {
                        String key = service_add.keys.elementAt(index);
                        String value = service_add[key]!;
                        return new Container(
                            width: 10,
                            height: 100,
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/img/${value}.png',
                                  width: 55,
                                ),
                                SizedBox(height: 10,
                                ),
                                Expanded(
                                    child: Text(
                                  key,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Montserrat',
                                      fontSize: 11,
                                      fontWeight: FontWeight.w500),
                                  textAlign: TextAlign.center,
                                )),
                              ],
                            ));
                      },
                      itemCount: service_add.length)))
        ],
      );
  }
}