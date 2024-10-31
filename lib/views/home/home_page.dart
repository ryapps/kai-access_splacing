import 'package:flutter/material.dart';
import 'package:kai_access/widgets/app_navigation.dart';
import 'package:kai_access/widgets/widget_home.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: AppNavigation(0),
      body: Container(
        child: SingleChildScrollView(
          child: Column(children: [
            Container(
                width: 420,
                height: 281,
                child: Stack(children: [
                  PreferredSize(
                      preferredSize: Size.fromHeight(182),
                      child: AppBar(
                          title: Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Selamat Pagi',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                      fontFamily: 'Montserrat'),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text('Mohammad Dhiriyan Firdaus'.toUpperCase(),
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ),
                          flexibleSpace: Image.asset(
                            'assets/img/background-bar.jpeg',
                            height: 210,
                            width: 500,
                            fit: BoxFit.cover,
                          ),
                          actions: [
                            IconButton(
                              onPressed: () {},
                              icon: CircleAvatar(
                                backgroundColor: Colors.white24,
                                radius: 25,
                                child: Image.asset(
                                  'assets/img/shopping-cart.png',
                                  width: 16,
                                ),
                              ),
                              constraints:
                                  BoxConstraints(maxWidth: 40, maxHeight: 40),
                              padding: EdgeInsets.zero,
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: CircleAvatar(
                                    backgroundColor: Colors.white24,
                                    radius: 25,
                                    child: Icon(
                                      Icons.mail,
                                      size: 16,
                                      color: Colors.white,
                                    )),
                                constraints:
                                    BoxConstraints(maxWidth: 40, maxHeight: 40),
                                padding: EdgeInsets.zero),
                            SizedBox(
                              width: 15,
                            )
                          ])),
                  Positioned(
                      top: 125.3,
                      bottom: 10,
                      right: 16,
                      left: 16,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white),
                        width: 220,
                        height: 150,
                        child: Column(
                          children: [
                            Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 8, horizontal: 16),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: [
                                                Image.asset(
                                                  'assets/img/kai-pay.jpeg',
                                                  width: 27,
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Text(
                                                  'KAI PAY',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontFamily: 'Montserrat'),
                                                )
                                              ]),
                                        ),
                                        Container(
                                            margin: EdgeInsets.symmetric(
                                                vertical: 7),
                                            padding: EdgeInsets.symmetric(
                                                vertical: 7, horizontal: 10),
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: Colors.blueAccent),
                                                borderRadius:
                                                    BorderRadius.circular(25)),
                                            child: Text(
                                              'Aktivasi KAIPay',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.blueAccent,
                                                  fontWeight: FontWeight.bold,
                                                  fontFamily: 'Montserrat'),
                                            ))
                                      ],
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      color: const Color.fromARGB(19, 0, 0, 0),
                                      height: 60,
                                      width: 1,
                                    ),
                                    SizedBox(
                                      width: 7,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                            margin: EdgeInsets.symmetric(
                                                horizontal: 5),
                                            child: Column(children: [
                                              SizedBox(
                                                height: 2,
                                              ),
                                              Image.asset(
                                                  'assets/img/scanner.png',
                                                  width: 24),
                                              SizedBox(
                                                height: 2,
                                              ),
                                              Text('Scan',
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontFamily: 'Montserrat',
                                                      fontWeight:
                                                          FontWeight.w600))
                                            ])),
                                        Container(
                                            margin: EdgeInsets.symmetric(
                                                horizontal: 5),
                                            child: Column(children: [
                                              Image.asset(
                                                  'assets/img/top-up.png',
                                                  width: 24),
                                              SizedBox(
                                                height: 1,
                                              ),
                                              Text(
                                                'Top Up',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    fontFamily: 'Montserrat',
                                                    fontWeight:
                                                        FontWeight.w600),
                                              )
                                            ])),
                                        Container(
                                            margin: EdgeInsets.only(left: 5),
                                            child: Column(children: [
                                              Image.asset(
                                                  'assets/img/history.png',
                                                  width: 24),
                                              Text('Riwayat',
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontFamily: 'Montserrat',
                                                      fontWeight:
                                                          FontWeight.w600))
                                            ]))
                                      ],
                                    )
                                  ],
                                )),
                            Container(
                              width: 350,
                              height: 1,
                              color: const Color.fromARGB(19, 0, 0, 0),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 8, horizontal: 16),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    child: Row(
                                      children: [
                                        Image.asset('assets/img/railpoin.png',
                                            width: 24),
                                        Text(
                                          '  0 ',
                                          style: TextStyle(
                                              color: Color.fromRGBO(
                                                  246, 115, 25, 1),
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18),
                                        ),
                                        Text(
                                          'RailPoin',
                                          style: TextStyle(
                                              fontFamily: 'Montserrat',
                                              fontWeight: FontWeight.w500,
                                              fontSize: 12),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 5),
                                    decoration: BoxDecoration(
                                        color: Color.fromRGBO(241, 245, 254, 1),
                                        borderRadius:
                                            BorderRadius.circular(25)),
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          'assets/img/basic.png',
                                          width: 24,
                                        ),
                                        Text(
                                          '  Basic  ',
                                          style: TextStyle(
                                              color: Colors.indigo,
                                              fontFamily: 'Montserrat',
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12),
                                        ),
                                        Container(
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(25),
                                                color: Colors.indigo),
                                            child: Icon(
                                              Icons.navigate_next,
                                              size: 24,
                                              color: Colors.white,
                                            )),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ))
                ])),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MainService(),
                  SecondService(),
                  Center(
                      child: Container(
                    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage('assets/img/bg-trip.jpeg'),
                            fit: BoxFit.fill)),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/img/trip-planner.png',
                          fit: BoxFit.cover,
                          width: 60,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Expanded(
                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'TRIP Planner',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Montserrat',
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text('Buat perencanaan terbaik untuk perjalananmu',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Montserrat',
                                    fontSize: 10,
                                    fontWeight: FontWeight.normal))
                          ],
                        )),
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border:
                                  Border.all(width: 1, color: Colors.white)),
                          child: Text(
                            'BUAT',
                            style: TextStyle(
                                fontSize: 12,
                                fontFamily: 'Montserrat',
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                        )
                      ],
                    ),
                  )),
                  SizedBox(
                    height: 24,
                  ),
                  Text(
                    'Layanan Tambahan Untuk Perjalanan Kamu',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  ),
                  ServiceAddition(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Promo Terbaru',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        decoration: BoxDecoration(
                            border:
                                Border.all(width: 1, color: Colors.blueAccent),
                            borderRadius: BorderRadius.circular(15)),
                        child: Text(
                          'Lihat Semua',
                          style: TextStyle(color: Colors.blueAccent),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(

                    children: [
                      Expanded(
                          child: SizedBox(
                            height: 500,
                              child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        separatorBuilder: (context, index) => Divider(thickness: 2,indent: 5,),
                        itemBuilder: (context, index) {
                          return Container(
                            width: 300,
                            child: Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: Image.network(
                                      'https://pict.sindonews.net/webp/732/pena/news/2024/05/22/178/1381797/sambut-long-weekend-waisak-dengan-manfaatkan-promo-kartu-kredit-mnc-bank-kai-access-yjx.webp',
                                      width: 300, fit: BoxFit.cover, height: 150,),
                                ),
                                SizedBox(height: 5,),
                                    Text('Manfaatkan Promo Kartu Kredit MNC Bank KAI Access',style: TextStyle(fontWeight: FontWeight.w600),)
                              ],
                            ),
                          );
                        },
                      )))
                    ],
                  )
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
