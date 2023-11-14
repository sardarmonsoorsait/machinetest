import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_interview/modules/doctor/doctor_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> doctorList = [
    'General physician',
    'Ear,Nose,& Throat',
    'GastroEntrology',
    'rumatology',
    'Skin Spceilist',
    'Nurologist'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
            'Welcome',
            style: TextStyle(
                color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
          ),
          actions: [
            Icon(
              Icons.account_box_rounded,
              color: Colors.white,
              size: 40,
            ),
            SizedBox(
              width: 10,
            )
          ]),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 150,
              width: double.infinity,
              color: Colors.blue,
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 150,
                        width: 100,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://cdn.pixabay.com/photo/2017/01/31/22/32/doctor-2027768_1280.png'))),
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      Column(
                        children: [
                          Text('Do Your Own Test',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16)),
                          Text('How do You Feel Today ?',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12)),
                          Text(
                            'Take Today\'s Test',
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                          Container(
                            height: 40,
                            width: 110,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white,
                            ),
                            child: Center(
                                child: Text(
                              'Get Started',
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 15,
                              ),
                            )),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Prevention',
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://cdn.pixabay.com/photo/2017/01/31/22/32/doctor-2027768_1280.png'),
                      radius: 30,
                    ),
                    Text(
                      'Avoid Close \n contact',
                      style: TextStyle(color: Colors.blue, fontSize: 15),
                    )
                  ],
                ),
                Column(
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://cdn.pixabay.com/photo/2017/01/31/22/32/doctor-2027768_1280.png'),
                      radius: 30,
                    ),
                    Text(
                      'Clean Your  Hands \n often',
                      style: TextStyle(color: Colors.blue, fontSize: 15),
                    )
                  ],
                ),
                Column(
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://cdn.pixabay.com/photo/2017/01/31/22/32/doctor-2027768_1280.png'),
                      radius: 30,
                    ),
                    Text(
                      'Wear A Face\nMask',
                      style: TextStyle(color: Colors.blue, fontSize: 15),
                    )
                  ],
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Find the right specialist ',
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                Text('viewAll',
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 16,
                        fontWeight: FontWeight.w400))
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 600,
                width: double.infinity,
                child: GridView.builder(
                  itemCount: 6,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: .9,
                      mainAxisSpacing: 5,
                      crossAxisSpacing: 5),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                         Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => DoctorPage()));
                      },
                      child: Container(
                       
                        decoration: BoxDecoration(
                            color: Color(Random().nextInt(0xffffff0f)),
                            borderRadius: BorderRadius.circular(15)),
                            child: Column(
                              children: [
                                Container(
                                   height: 150,
                        width: 50,
                                  decoration: BoxDecoration(image: DecorationImage(image: NetworkImage( 'https://cdn.pixabay.com/photo/2017/01/31/22/32/doctor-2027768_1280.png'))),)
                             ,
                             Text(doctorList[index],style: TextStyle(color:Color(Random().nextInt(0xffffff0f)),fontSize: 16,fontWeight: FontWeight.bold ),) ],
                            ),
                      ),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
