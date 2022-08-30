import 'package:flutter/material.dart';
import 'package:moneymnagement/planning.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.blueGrey[50],
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  List<String> item = [];
  // List<String> data=[];
  List<String> tosaveBool = [];
  List<bool> checkupdate = [];

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
              padding: const EdgeInsets.only(top: 12.0, bottom: 22.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Good Morning",
                        // textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        "Rebecca Fala",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  //Spacer(),
                  IconButton(
                      icon:
                          new Icon(Icons.notifications, color: Colors.blueGrey),
                      onPressed: () => Navigator.of(context).pop())
                ],
              ),
            ),
            Container(
              height: height / 7,
              width: width,
              //color: Colors.blue,
              decoration: BoxDecoration(
                  color: Colors.deepPurpleAccent[700],
                  border: Border.all(
                    color: Colors.deepPurpleAccent[700]!,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 28.0, top: 17.0),
                        child: Text(
                          "\$2,821.00",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 35,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 28.0, top: 8.0),
                        child: Text(
                          "Total Balance",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 40.0, left: 60),
                    child: IconButton(
                        icon: new Icon(
                          Icons.show_chart,
                          color: Colors.orange[300],
                          size: 80,
                        ),
                        onPressed: () => Navigator.of(context).pop()),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 18.0, bottom: 18.0, right: 15,left: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: height / 14,
                          width: height / 14,
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              border: Border.all(
                                color: Colors.grey,
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                          child: IconButton(
                              icon: new Icon(Icons.arrow_downward_outlined,
                                  size: 27,
                                  color: Colors.deepPurpleAccent[700]),
                              onPressed: () => Navigator.of(context).pop()),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Income",
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            "\$460.00",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: height / 14,
                          width: height / 14,
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              border: Border.all(
                                color: Colors.grey,
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                          child: IconButton(
                              icon: Icon(Icons.arrow_upward_outlined,
                                  size: 27,
                                  color: Colors.orange),
                              onPressed: () => Navigator.of(context).pop()),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Expense",
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            "\$231.00",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 4.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(crossAxisAlignment:CrossAxisAlignment.start ,
                    children: [
                      Text(
                        "Your Wallet",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "2 Budget, 1 savings",
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "+ Add New",
                    style: TextStyle(
                        color: Colors.deepPurpleAccent[700], fontWeight: FontWeight.w700),
                  )
                ],
              ),
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
            Padding(
              padding: const EdgeInsets.only(top: 8.0,bottom: 14),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Recent Transaction",
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
            ),

            Container(
              width: width - 30,
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [BoxShadow(blurRadius: 3.0, color: Colors.black12)],
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                            icon: new Icon(Icons.local_dining,
                                color: Colors.orange),
                            onPressed: () => Navigator.of(context).pop()),
                        Column(
                          children: [
                            Text(
                              "Food & Beverage",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "Today - Makan Bukso",
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        Text(
                          "-515.00",
                          style: TextStyle(
                            color: Colors.red,
                          ),
                        )
                      ],
                    ),
                    Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                            icon: new Icon(Icons.medical_services,
                                color: Colors.red),
                            onPressed: () => Navigator.of(context).pop()),
                        Column(
                          children: [
                            Text(
                              "Food & Beverage",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "Today - Makan Bukso",
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        Text(
                          "-515.00",
                          style: TextStyle(
                            color: Colors.red,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            )
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
                color: Colors.deepPurpleAccent[700],
                size: 30,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon:
                  Icon(Icons.assessment_outlined, color: Colors.grey, size: 30),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.credit_card, color: Colors.grey, size: 30),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Planning(
                          title: 'kl',
                        )));
              },
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
