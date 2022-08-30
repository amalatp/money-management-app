// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:moneymnagement/main.dart';
import 'package:moneymnagement/savings.dart';

class Planning extends StatefulWidget {
  Planning({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<Planning> createState() => _PlanningState();
}

class _PlanningState extends State<Planning> {
  @override

  TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = size.height;
    double width = size.width;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 25.0, bottom: 22.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Planning",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w900),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Wallet",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                Text(
                  "See All",
                  style: TextStyle(
                      color: Colors.deepPurpleAccent[700], fontWeight: FontWeight.w700),
                )
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(top: 22.0, bottom: 25),
                child: Row(children: [
                  Container(
                    height: height / 5,
                    width: height / 6,
                    decoration: BoxDecoration(
                        color: Colors.deepPurpleAccent[700],
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 80, left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("\$45.00",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold)),
                          Padding(
                            padding: const EdgeInsets.only(top: 6),
                            child: Text("Food",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12)),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: height / 5,
                    width: height / 40,
                  ),
                  Container(
                    height: height / 5,
                    width: height / 6,
                    decoration: BoxDecoration(
                        color: Colors.deepOrangeAccent,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 80, left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("\$150.00",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold)),
                          Padding(
                            padding: const EdgeInsets.only(top: 6),
                            child: Text("Clothing",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12)),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: height / 5,
                    width: height / 40,
                  ),
                  Container(
                    height: height / 5,
                    width: height / 6,
                    decoration: BoxDecoration(
                        color: Colors.deepPurpleAccent[700],
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 80, left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("\$60.00",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold)),
                          Padding(
                            padding: const EdgeInsets.only(top: 6),
                            child: Text("Parking",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ]),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Savings",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  "+ Add New",
                  style: TextStyle(
                      color: Colors.deepPurpleAccent[700], fontWeight: FontWeight.w700),
                )
              ],
            ),
            Container(
              height: 15,
            ),
        InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Savings(),
                ),
              );
            },
            child: Container(
              height: 80,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(blurRadius: 3.0, color: Colors.black12)
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              padding: EdgeInsets.all(20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    Icons.shopping_bag_outlined,
                    color: Colors.indigo[300],
                    size: 35,
                  ),
                  Column(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 1.5,
                        child: Row(
                          // mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Iphone 12",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Text("\$545.00",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width / 1.5,
                        padding: const EdgeInsets.only(top: 10.0),
                        child: LinearProgressIndicator(
                          value: 0.45,
                          valueColor: new AlwaysStoppedAnimation<Color>(
                              Colors.deepPurpleAccent[700]!),
                          backgroundColor: Colors.indigo[100],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
        ),
            Container(
              height: 15,
            ),
            Container(
              height: 80,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(blurRadius: 3.0, color: Colors.black12)
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              padding: EdgeInsets.all(20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    Icons.shopping_bag_outlined,
                    color: Colors.orangeAccent[100],
                    size: 35,
                  ),
                  Column(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 1.5,
                        child: Row(
                          // mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Converse Shoe",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold)),
                            Text("\$80.00",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width / 1.5,
                        padding: const EdgeInsets.only(top: 10.0),
                        child: LinearProgressIndicator(
                          value: 0.6,
                          valueColor:
                              new AlwaysStoppedAnimation<Color>(Colors.orange),
                          backgroundColor: Colors.orange[50],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Budget",
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                Text(
                  "+ Add New",
                  style: TextStyle(
                      color: Colors.deepPurpleAccent[700], fontWeight: FontWeight.w700),
                )
              ],
            ),
            Container(
              height: 15,
            ),
            Container(
              height: 80,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(blurRadius: 3.0, color: Colors.black12)
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              padding: EdgeInsets.all(20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    Icons.fastfood_outlined,
                    color: Colors.indigo[300],
                    size: 35,
                  ),
                  Column(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 1.5,
                        child: Row(
                          // mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Food & Beverages",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold)),
                            Text("\$125.00",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width / 1.5,
                        padding: const EdgeInsets.only(top: 10.0),
                        child: LinearProgressIndicator(
                          value: 0.73,
                          valueColor: new AlwaysStoppedAnimation<Color>(
                              Colors.deepPurpleAccent[700]!),
                          backgroundColor: Colors.indigo[100],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),


          ]),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        //Floating action button on Scaffold
        onPressed: () {
          //code to execute on button press
        },
        child: Container(
            height: 55,
            width: 55,
            decoration: BoxDecoration(
                color: Colors.deepPurpleAccent[700],
                shape: BoxShape.circle,
                border: Border.all(color: Colors.deepPurpleAccent[700]!, width: 2)),
            child: Icon(Icons.add)), //icon inside button
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        //bottom navigation bar on scaffold
        color: Colors.white,
        shape: CircularNotchedRectangle(), //shape of notch
        notchMargin:
            -10, //notche margin between floating button and bottom appbar
        child: Row(
          //children inside bottom appbar
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: Icon(
                Icons.home,
                color: Colors.grey,
                size: 30,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            IconButton(
              icon:
                  Icon(Icons.assessment_outlined, color: Colors.grey, size: 30),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.credit_card, color: Colors.deepPurpleAccent[700], size: 30),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.account_circle_outlined,
                  color: Colors.grey, size: 30),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
