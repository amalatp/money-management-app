import 'package:flutter/material.dart';
import 'package:moneymnagement/planning.dart';

class Savings extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = size.height;
    double width = size.width;

    return Scaffold(
      body: Column(
        children: [
          Container(
            width: width,
            height: 320.0,
            child: Stack(children: <Widget>[
               Container(
                alignment: Alignment.topCenter,
                height: 250,
                  width: width,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(bottomLeft:Radius.circular(30),bottomRight:Radius.circular(30)),
                    color: Colors.deepPurpleAccent
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 40.0),
                    child: Row(  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          icon:const Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                            size: 25,
                          ),
                          onPressed: () {Navigator.pop(context);},
                        ),
                        const Text("Savings",
                        style: TextStyle(fontSize: 25,fontWeight: FontWeight.w600,color: Colors.white),
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.more_vert,
                            color: Colors.white,
                            size: 35,
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
              ),
               Align(alignment: Alignment.bottomCenter,
                child: Container(
                    height: 180,
                    width: width-50,
                    decoration: BoxDecoration(
                      color: Colors.deepPurpleAccent[700],
                      borderRadius:const BorderRadius.all(Radius.circular(20))
                    ),
                    child:Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                         const Text("Iphone 12",
                         style: TextStyle(
                             fontSize: 22,
                             fontWeight: FontWeight.bold,
                             color:Colors.white ),
                         ),
                          Padding(
                            padding: const EdgeInsets.only(top: 50.0),
                            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Balance",
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600
                                ),
                                ),
                                Text("56%",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top:10.0,bottom: 10),
                            child: LinearProgressIndicator(
                              value: 0.56,
                              valueColor:  AlwaysStoppedAnimation<Color>(
                                  Colors.white),
                              backgroundColor: Colors.deepPurpleAccent,
                              minHeight: 5,
                            ),
                          ),
                          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("\$545.00",
                               style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 19,
                                  fontWeight: FontWeight.bold
                                ),),
                              Text("19 days left",
                              style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                              )
                            ],
                          )
                        ],
                      ),
                    ) ,
                  )
              )
            ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0,top: 25,right: 15.0,),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Recent Transactions",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
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
          Padding(
            padding: const EdgeInsets.only(left: 15.0,top: 20,right: 15.0,),
            child: Container(
              width: width,
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

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              Text(
                                "Top Up",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),

                              Text(
                                "Today - 02.34 pm",
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        Text(
                          "\$20.00",
                          style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold
                          ),
                        )
                      ],
                    ),
                    Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Automatic Saving",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "Today - 12.01 am",
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        Text(
                          "\$20.00",
                          style: TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.bold
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0,top: 20,right: 15.0,),
            child: Container(
              width: width,
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

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              Text(
                                "Top Up",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),

                              Text(
                                "Today - 02.34 pm",
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        Text(
                          "\$20.00",
                          style: TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.bold
                          ),
                        )
                      ],
                    ),
                    Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Automatic Saving",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "Today - 12.01 am",
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        Text(
                          "\$20.00",
                          style: TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.bold
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 298.0,top: 15),
            child: Container(
              height: 55,
              width: 55,
              decoration: BoxDecoration(
                shape: BoxShape.circle,color: Colors.deepPurpleAccent[700]
              ),
              child: Icon(Icons.add,color: Colors.white,size: 28,)),
          ),

        ],
      ),
    );
  }
}