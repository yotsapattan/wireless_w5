import 'dart:html';
import 'package:flutter/material.dart';
import 'package:my_app/pages/page1.dart';
import 'package:my_app/pages/res1.dart';
import 'package:my_app/pages/page2.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key});

  @override 
  State<HomePage> createState() => _HomePage();
}


class _HomePage extends State<HomePage> {
final _textController = TextEditingController();

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: appBar(),
    body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        resOptions(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Color(0xffD9D9D9),
              padding: const EdgeInsets.only(top:10, left:10),
              child: InkWell( 
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const res1(textFromPage2: 'Kongphob Wutthiumphol 6488149',)), 
                  );
                },
                child: Row(   
                  children: [
                    Image.asset('images/arL.png', height: 30,),
                    const Text('Back to Homepage'), // Keep the Text
                  ],
                ),
              ),
            ),
            Container(
              height: 500,
              color: Color(0xffD9D9D9),
              child: Align(
                alignment: Alignment.topLeft,
                child: Column( 
                  children: [
                    Padding( 
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Row(
                        children: [
                          Image.asset('images/Hua.png', height: 90,),
                          SizedBox(width: 10),
                          InkWell( 
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const res1(textFromPage2: 'Kongphob Wutthiumphol 6488149',)),
                            );
                          },
                            child: Container(
                              width: 180,
                              height: 80, 
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.only(left: 5),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Hua Seng Hong (Salaya)',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 13,
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      '3.7 (125 reviews)',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12,
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      'Open: 10:00 - 18:00 everyday',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Row(
                        children: [
                          Image.asset('images/sushiro.png', height: 90,), 
                          SizedBox(width: 10),
                          Container(
                            width: 180,
                            height: 80, 
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'SUSHIRO (The Mall Thrapa)',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 13,
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  const Text(
                                    '4.8 (158 reviews)',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  const Text(
                                    'Open: 10:00 - 21:00 everyday',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Row(
                        children: [
                          Image.asset('images/hidilao.png', height: 90,), 
                          SizedBox(width: 10),
                          Container(
                            width: 180,
                            height: 80, 
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Hidilao (Central Rama9)',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 13,
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  const Text(
                                    '4.4 (1028 reviews)',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  const Text(
                                    'Open: 10:00 - 03:00 everyday',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding( 
                      padding: const EdgeInsets.all(16.0),
                      child: Column (
                        children: [
                          TextField(
                            controller: _textController,
                            style: TextStyle(fontSize: 12),
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Color(0xffFDFED2),
                              hintText: 'Search..',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide.none
                              )
                            ),
                          ),
                          ElevatedButton(
                          onPressed: () {
                            final textToSend = _textController.text;
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => page1(textFromHomePage: textToSend),
                              ),
                            );
                          },
                          child: Text("Send to Page1"),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 150,
              color: Color(0xFF355197),
              child: Container(
                child: Row(
                  children: [
                    Padding(
                          padding: const EdgeInsets.only(left: 30, top:20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Copyright 2024-present',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                              const SizedBox(height: 5),
                              const Text(
                                'TuesdayMenu Co.,Ltd',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                              const SizedBox(height: 5),
                              const Text(
                                'All right reserved',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right:30),
                        child: Image.asset("images/logoTues.png", height: 60,))       
                  ],
                ),
              )
            )
          ],
        ),
      ],
    ),
  );
}
  AppBar appBar() {
    return AppBar(
      backgroundColor: Color(0xffD9D9D9),
      elevation: 0.0,
      centerTitle: true,
      leading: Container(
        margin: const EdgeInsets.all(10),
        child: Image.asset('assets/images/map.png'),
      ),
      title: Column(
        children: [
          const Text(
            'Name of restaurant',
            style: TextStyle(
              color: Colors.black,
              fontSize: 11,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 5),
            padding: const EdgeInsets.symmetric(vertical: 0),
            height: 40,
            decoration: BoxDecoration(
              color: Colors.blue, 
              borderRadius: BorderRadius.circular(20),
            ),
            child:  TextField(
              style: TextStyle(fontSize: 12),
              decoration: InputDecoration(
                filled: true,
                fillColor: Color(0xffFDFED2),
                hintText: 'Search..',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none
                )
              ),
            ),
          ),
        ],
      ),
      actions: [
        Container(
          margin: const EdgeInsets.all(10),
          child: Image.asset('assets/images/setting.png'),
        ),
      ],
    );
  }
  
  Container resOptions() {
  return Container(
    height: 230,
    color: Color(0xFF355197),
    child: Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const page2(textFromHomePage: '',)),
                );
              },
              child: Container(
                margin: const EdgeInsets.only(right: 10, top: 15),
                width: 180,
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Text(
                          'The nearest Restaurants',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Image.asset('images/near.png', width: 70, height: 70),
                      ),
                    )
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const page1(textFromHomePage: 'Kongphob Wutthiumphol 6488149',)),
                );
              },
              child: Container(
                margin: const EdgeInsets.only(right: 20, top: 15),
                width: 180,
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child:
                        Text(
                          'The Cheapest Restaurants',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Image.asset('images/cheap.png', width: 70, height: 70),
                      ),
                    )
                  ],
                ),
              ),
            ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const page1(textFromHomePage: '',)),
                );
              },
              child: Container(
                margin: const EdgeInsets.only(right: 10, top: 15, bottom: 5),
                width: 180,
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Text(
                          'Your favourite Restaurants',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Image.asset('images/favourite.png', width: 70, height: 70),
                      ),
                    )
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const page1(textFromHomePage: '',)),
                );
              },
              child: Container(
                margin: const EdgeInsets.only(right: 20, top: 15),
                width: 180,
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Text(
                          'The highest review Restaurants',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Image.asset('images/highest.png', width: 70, height: 70),
                      ),
                    )
                  ],
                ),
              ),
            ),
            ],
          ),
        ],
      ),
    ),
  );
}


    
}



