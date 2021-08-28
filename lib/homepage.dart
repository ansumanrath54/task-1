import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_1/constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text("Hello Ankur",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey
                        ),),
                      Row(
                        children: [
                          Text("Find A ",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w900
                          ),),
                          Text("Workout",
                            style: TextStyle(
                                color: Colors.indigo,
                                fontSize: 20,
                                fontWeight: FontWeight.w900
                            ),)
                        ],
                      )
                    ],
                  ),
                  IconButton(
                    icon: Icon(Icons.search),
                    onPressed: () {  },
                  )
                ],
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    height: 190,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.indigo,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(130),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      )
                    ),
                  ),
                ),
                Image.asset("assets/images/Group 1.png", height: 220,),
                Positioned(
                  top: 30,
                  right: 50,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text("Legs ",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w800,
                                color: Colors.white
                              ),),
                              Text("and",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w100,
                                  color: Colors.white
                                ),)
                            ],
                          ),
                          Row(
                            children: [
                              Text("Glutes ",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w800,
                                    color: Colors.white
                                ),),
                              Text("Workout",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w100,
                                    color: Colors.white
                                ),)
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 15),
                            child: Row(
                              children: [
                                Icon(Icons.signal_cellular_alt, color: Colors.white),
                                SizedBox(width: 10),
                                Text("Advanced",
                                style: TextStyle(
                                  color: Colors.white
                                ),)
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 15),
                            child: Row(
                              children: [
                                Icon(Icons.alarm, color: Colors.white),
                                SizedBox(width: 10),
                                Text("45 Min",
                                  style: TextStyle(
                                      color: Colors.white
                                  ),)
                              ],
                            ),
                          ),
                          SizedBox(height: 5),
                          RaisedButton(
                            color: Colors.white.withOpacity(.40),
                            onPressed: () {

                            },
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)
                            ),
                            child: Text("Start Workout",
                            style: TextStyle(
                              color: Colors.white
                            ),),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10,right: 10),
            child: Container(
              height: 120,
              color: boxColor,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Today's Activity",
                    style: TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        "Details",
                        style: TextStyle(color: textColor),
                      ),
                      Icon(Icons.arrow_forward)
                    ],
                  )
                ],
              ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          height: 80,
                          width: 140,
                          margin: EdgeInsets.only(top: 8, bottom: 8, left: 8),
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(.15),
                                offset: Offset(4,4), blurRadius: 8
                              ),
                              BoxShadow(
                                  color: Colors.black.withOpacity(.15),
                                  offset: Offset(-4,-4)
                              ),
                            ],
                            color: boxColor,
                            borderRadius: BorderRadius.circular(12)
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(today[0].icon,height: 20),
                                  SizedBox(width: 10),
                                  Text(today[0].title,
                                  style: TextStyle(
                                    color: Colors.black,
                                    letterSpacing: 2
                                  ),)
                                ],
                              ),
                              Text(today[0].count,
                              style: TextStyle(
                                color: Colors.indigo,
                                fontSize: 25,
                                fontWeight: FontWeight.bold
                              ),)
                            ],
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          height: 80,
                          width: 140,
                          margin: EdgeInsets.only(top: 8, bottom: 8),
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black.withOpacity(.15),
                                    offset: Offset(4,4), blurRadius: 8
                                ),
                                BoxShadow(
                                    color: Colors.black.withOpacity(.15),
                                    offset: Offset(-4,-4)
                                ),
                              ],
                              color: boxColor,
                              borderRadius: BorderRadius.circular(12)
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(today[1].icon,height: 20),
                                  SizedBox(width: 10),
                                  Text(today[1].title,
                                    style: TextStyle(
                                        color: Colors.black,
                                        letterSpacing: 2
                                    ),)
                                ],
                              ),
                              Text(today[1].count,
                                style: TextStyle(
                                    color: Colors.indigo,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold
                                ),)
                            ],
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          height: 80,
                          width: 140,
                          margin: EdgeInsets.only(top: 8, bottom: 8, right: 8),
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black.withOpacity(.15),
                                    offset: Offset(4,4), blurRadius: 8
                                ),
                                BoxShadow(
                                    color: Colors.black.withOpacity(.15),
                                    offset: Offset(-4,-4)
                                ),
                              ],
                              color: boxColor,
                              borderRadius: BorderRadius.circular(12)
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(today[2].icon,height: 20),
                                  SizedBox(width: 10),
                                  Text(today[2].title,
                                    style: TextStyle(
                                        color: Colors.black,
                                        letterSpacing: 2
                                    ),)
                                ],
                              ),
                              Text(today[2].count,
                                style: TextStyle(
                                    color: Colors.indigo,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold
                                ),)
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
            ),
          ),),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left: 10,right: 10),
            child: Container(
              height: 120,
              color: boxColor,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Daily Activity",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: <Widget>[
                          Text(
                            "Details",
                            style: TextStyle(color: textColor),
                          ),
                          Icon(Icons.arrow_forward)
                        ],
                      )
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          height: 80,
                          width: 80,
                          margin: EdgeInsets.only(top: 8, bottom: 8, left: 8),
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black.withOpacity(.15),
                                    offset: Offset(4,4), blurRadius: 8
                                ),
                                BoxShadow(
                                    color: Colors.black.withOpacity(.15),
                                    offset: Offset(-4,-4)
                                ),
                              ],
                              color: boxColor,
                              borderRadius: BorderRadius.circular(12)
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(daily[0].day,
                                    style: TextStyle(
                                        color: Colors.black,
                                        letterSpacing: 2
                                    ),)
                                ],
                              ),
                              SizedBox(height: 15,),
                              Text(daily[0].date,
                                style: TextStyle(
                                    color: Colors.indigo,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold
                                ),)
                            ],
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          height: 80,
                          width: 80,
                          margin: EdgeInsets.only(top: 8, bottom: 8),
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black.withOpacity(.15),
                                    offset: Offset(4,4), blurRadius: 8
                                ),
                                BoxShadow(
                                    color: Colors.black.withOpacity(.15),
                                    offset: Offset(-4,-4)
                                ),
                              ],
                              color: boxColor,
                              borderRadius: BorderRadius.circular(12)
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(daily[1].day,
                                    style: TextStyle(
                                        color: Colors.black,
                                        letterSpacing: 2
                                    ),)
                                ],
                              ),
                              SizedBox(height: 15,),
                              Text(daily[1].date,
                                style: TextStyle(
                                    color: Colors.indigo,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold
                                ),)
                            ],
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          height: 80,
                          width: 80,
                          margin: EdgeInsets.only(top: 8, bottom: 8),
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black.withOpacity(.15),
                                    offset: Offset(4,4), blurRadius: 8
                                ),
                                BoxShadow(
                                    color: Colors.black.withOpacity(.15),
                                    offset: Offset(-4,-4)
                                ),
                              ],
                              color: boxColor,
                              borderRadius: BorderRadius.circular(12)
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(daily[2].day,
                                    style: TextStyle(
                                        color: Colors.black,
                                        letterSpacing: 2
                                    ),)
                                ],
                              ),
                              SizedBox(height: 15,),
                              Text(daily[2].date,
                                style: TextStyle(
                                    color: Colors.indigo,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold
                                ),)
                            ],
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          height: 80,
                          width: 80,
                          margin: EdgeInsets.only(top: 8, bottom: 8),
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black.withOpacity(.15),
                                    offset: Offset(4,4), blurRadius: 8
                                ),
                                BoxShadow(
                                    color: Colors.black.withOpacity(.15),
                                    offset: Offset(-4,-4)
                                ),
                              ],
                              color: boxColor,
                              borderRadius: BorderRadius.circular(12)
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(daily[3].day,
                                    style: TextStyle(
                                        color: Colors.black,
                                        letterSpacing: 2
                                    ),)
                                ],
                              ),
                              SizedBox(height: 15,),
                              Text(daily[3].date,
                                style: TextStyle(
                                    color: Colors.indigo,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold
                                ),)
                            ],
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          height: 80,
                          width: 80,
                          margin: EdgeInsets.only(top: 8, bottom: 8),
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black.withOpacity(.15),
                                    offset: Offset(4,4), blurRadius: 8
                                ),
                                BoxShadow(
                                    color: Colors.black.withOpacity(.15),
                                    offset: Offset(-4,-4)
                                ),
                              ],
                              color: boxColor,
                              borderRadius: BorderRadius.circular(12)
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(daily[4].day,
                                    style: TextStyle(
                                        color: Colors.black,
                                        letterSpacing: 2
                                    ),)
                                ],
                              ),
                              SizedBox(height: 15,),
                              Text(daily[4].date,
                                style: TextStyle(
                                    color: Colors.indigo,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold
                                ),)
                            ],
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          height: 80,
                          width: 80,
                          margin: EdgeInsets.only(top: 8, bottom: 8),
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black.withOpacity(.15),
                                    offset: Offset(4,4), blurRadius: 8
                                ),
                                BoxShadow(
                                    color: Colors.black.withOpacity(.15),
                                    offset: Offset(-4,-4)
                                ),
                              ],
                              color: boxColor,
                              borderRadius: BorderRadius.circular(12)
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(daily[5].day,
                                    style: TextStyle(
                                        color: Colors.black,
                                        letterSpacing: 2
                                    ),)
                                ],
                              ),
                              SizedBox(height: 15,),
                              Text(daily[5].date,
                                style: TextStyle(
                                    color: Colors.indigo,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold
                                ),)
                            ],
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          height: 80,
                          width: 80,
                          margin: EdgeInsets.only(top: 8, bottom: 8, right: 8),
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black.withOpacity(.15),
                                    offset: Offset(4,4), blurRadius: 8
                                ),
                                BoxShadow(
                                    color: Colors.black.withOpacity(.15),
                                    offset: Offset(-4,-4)
                                ),
                              ],
                              color: boxColor,
                              borderRadius: BorderRadius.circular(12)
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(daily[6].day,
                                    style: TextStyle(
                                        color: Colors.black,
                                        letterSpacing: 2
                                    ),)
                                ],
                              ),
                              SizedBox(height: 15,),
                              Text(daily[6].date,
                                style: TextStyle(
                                    color: Colors.indigo,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold
                                ),)
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 10,right: 10),
            child: Container(
              height: 100,
              color: boxColor,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () { },
                          child: Container(
                            height: 80,
                            width: 80,
                            margin: EdgeInsets.only(top: 8, bottom: 8),
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black.withOpacity(.15),
                                      offset: Offset(4,4), blurRadius: 8
                                  ),
                                  BoxShadow(
                                      color: Colors.black.withOpacity(.15),
                                      offset: Offset(-4,-4)
                                  ),
                                ],
                                color: boxColor,
                                borderRadius: BorderRadius.circular(12)
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.home, color: Colors.indigo,),
                                  ],
                                ),
                                Text("Home",
                                  style: TextStyle(
                                      color: Colors.black,
                                  ),)
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        GestureDetector(
                          onTap: () { },
                          child: Container(
                            height: 80,
                            width: 80,
                            margin: EdgeInsets.only(top: 8, bottom: 8),
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black.withOpacity(.15),
                                      offset: Offset(4,4), blurRadius: 8
                                  ),
                                  BoxShadow(
                                      color: Colors.black.withOpacity(.15),
                                      offset: Offset(-4,-4)
                                  ),
                                ],
                                color: boxColor,
                                borderRadius: BorderRadius.circular(12)
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.stacked_line_chart, color: Colors.indigo,),
                                  ],
                                ),
                                Text("Activity",
                                  style: TextStyle(
                                      color: Colors.black,
                                  ),)
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        GestureDetector(
                          onTap: () { },
                          child: Container(
                            height: 80,
                            width: 80,
                            margin: EdgeInsets.only(top: 8, bottom: 8),
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black.withOpacity(.15),
                                      offset: Offset(4,4), blurRadius: 8
                                  ),
                                  BoxShadow(
                                      color: Colors.black.withOpacity(.15),
                                      offset: Offset(-4,-4)
                                  ),
                                ],
                                color: boxColor,
                                borderRadius: BorderRadius.circular(12)
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.settings, color: Colors.indigo,),
                                  ],
                                ),
                                Text("Settings",
                                  style: TextStyle(
                                      color: Colors.black,
                                  ),)
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        GestureDetector(
                          onTap: () { },
                          child: Container(
                            height: 80,
                            width: 80,
                            margin: EdgeInsets.only(top: 8, bottom: 8),
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black.withOpacity(.15),
                                      offset: Offset(4,4), blurRadius: 8
                                  ),
                                  BoxShadow(
                                      color: Colors.black.withOpacity(.15),
                                      offset: Offset(-4,-4)
                                  ),
                                ],
                                color: boxColor,
                                borderRadius: BorderRadius.circular(12)
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.account_circle, color: Colors.indigo,),
                                  ],
                                ),
                                Text("Profile",
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),)
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),),
        ],
      ),
    );
  }
}
