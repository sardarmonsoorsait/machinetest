import 'package:flutter/material.dart';

class DoctorPage extends StatefulWidget {
  const DoctorPage({super.key});

  @override
  State<DoctorPage> createState() => _DoctorPageState();
}

class _DoctorPageState extends State<DoctorPage> {
  List<String> Days = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'];
  List<bool> isTap = [false, false, false, false, false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 25,
            ),
            Row(
              children: [
                Icon(
                  Icons.arrow_back_ios,
                  color: Colors.blue,
                ),
                Text(
                  'Dr.Laura Alexandra',
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Text(
              'MRCGP(INT),MBBS,DNB',
              style: TextStyle(color: Colors.grey),
            ),
            Container(
              height: 150,
              width: MediaQuery.of(context).size.width,
              color: Colors.grey.shade200,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Choose your slot',
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 90,
                      width: MediaQuery.of(context).size.width,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 6,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              setState(() {
                                isTap[index] = true;
                              });
                              
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    color:isTap[index]? Colors.blue:Colors.grey.shade200),
                                width: 50,
                                height: 80,
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(
                                        Days[index],
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.grey),
                                      ),
                                      Text(index.toString(),
                                          style: TextStyle(
                                              fontSize: 20, color: Colors.grey))
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                    'Morning ',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
            ),
            
            
            Row(
              children: [
                SizedBox(width: 5,),
                InkWell(
                  onTap: () {
                    
                  },
                  child: Container(
                    width: 75,
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.shade100
                    ),
                    child: Center(child: Text('10.00AM')),
                  ),
                ),
                SizedBox(width: 5,),
                Container(
                  width: 75,
                  height: 40,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.shade100
                  ),
                  child: Center(child: Text('11.00AM')),
                  
                ),
                SizedBox(width: 5,),
                Container(
                  width: 75,
                  height: 40,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.shade100
                  ),
                  child: Center(child: Text('12.00PM')),
                )
              ],
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                    'afternoon',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
            ),
            
            
            Row(
              children: [
                SizedBox(width: 5,),
                Container(
                  width: 75,
                  height: 40,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.shade100
                  ),
                  child: Center(child: Text('01.00AM')),
                ),
                SizedBox(width: 5,),
                Container(
                  width: 75,
                  height: 40,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.shade100
                  ),
                  child: Center(child: Text('02.00AM')),
                  
                ),
                SizedBox(width: 5,),
                Container(
                  width: 75,
                  height: 40,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.shade100
                  ),
                  child: Center(child: Text('03.00PM')),
                )
              ],
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                    'Evening ',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
            ),
            
            
            Row(
              children: [
                SizedBox(width: 5,),
                Container(
                  width: 75,
                  height: 40,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.shade100
                  ),
                  child: Center(child: Text('05.00AM')),
                ),
                SizedBox(width: 5,),
                Container(
                  width: 75,
                  height: 40,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.shade100
                  ),
                  child: Center(child: Text('06.00AM')),
                  
                ),
                SizedBox(width: 5,),
                Container(
                  width: 75,
                  height: 40,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.shade100
                  ),
                  child: Center(child: Text('07.00PM')),
                ),
                SizedBox(width: 5,),
                 Container(
                  width: 75,
                  height: 40,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.shade100
                  ),
                  child: Center(child: Text('08.00PM')),
                )
              ],
            )

          ],
        ),
      ),
    );
  }
}
