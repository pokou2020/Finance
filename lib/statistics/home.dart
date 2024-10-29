import 'package:finance/statistics/pages/statistic_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 231, 231, 231),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Column(
            children: [
              Expanded(
                  flex: 1,
                  child: Container(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "welcome Back",
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.grey),
                                ),
                                Text(
                                  "Hello Smith",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            Stack(
                              children: [
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: const BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle),
                                  child: const Icon(
                                      Icons.notifications_none_sharp),
                                ),
                                Positioned(
                                    right: 5,
                                    child: Container(
                                      height: 10,
                                      width: 10,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color:
                                            Color.fromARGB(255, 247, 93, 144),
                                      ),
                                    )),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  )),
              Expanded(
                  flex: 3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Total Balance",
                        style: TextStyle(color: Colors.grey),
                      ),
                      const Text(
                        "£474215",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 37),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height: 80,
                            width: 80,
                            decoration: const BoxDecoration(
                                color: Colors.white, shape: BoxShape.circle),
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.turn_sharp_right_outlined),
                                Text("Send")
                              ],
                            ),
                          ),
                          Container(
                            height: 80,
                            width: 80,
                            decoration: const BoxDecoration(
                                color: Colors.white, shape: BoxShape.circle),
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.subdirectory_arrow_left_sharp,
                                ),
                                Text("Receive")
                              ],
                            ),
                          ),
                          Container(
                            height: 80,
                            width: 80,
                            decoration: const BoxDecoration(
                                color: Colors.white, shape: BoxShape.circle),
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.family_restroom),
                                Text("Family")
                              ],
                            ),
                          ),
                          Container(
                            height: 80,
                            width: 80,
                            decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 247, 93, 144),
                                shape: BoxShape.circle),
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.more_horiz_rounded,
                                  color: Colors.white,
                                ),
                                Text(
                                  "More",
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  )),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Recipients",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Text(
                    "Seel all",
                    style: TextStyle(color: Colors.blue),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                  flex: 5,
                  child: ListView(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 150,
                            width: 160,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30)),
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CircleAvatar(
                                    maxRadius: 25,
                                    backgroundImage:
                                        AssetImage('assets/images/3.jpg'),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    "Helena Smith",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "£442",
                                    style: TextStyle(color: Colors.grey),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height: 150,
                            width: 160,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30)),
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CircleAvatar(
                                    maxRadius: 25,
                                    backgroundImage:
                                        AssetImage('assets/images/2.jpg'),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    "Tyler Carter",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "£15442",
                                    style: TextStyle(color: Colors.grey),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              showModalBottomSheet(
                                  backgroundColor: Colors.transparent,
                                  context: context,
                                  builder: (context) {
                                    return Stack(children: [
                                      Positioned(
                                        height:
                                            MediaQuery.of(context).size.height,
                                        top:
                                            MediaQuery.of(context).size.height /
                                                    2 -
                                                300,
                                        child: Container(
                                          height: MediaQuery.of(context)
                                              .size
                                              .height,
                                          width:
                                              MediaQuery.of(context).size.width,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            color: Colors.white,
                                          ),
                                        
                                        ),
                                      ),
                                            Positioned(
                                                               top: 150,
                                                               left: 0,
                                                               right: 0,
 
                                                                child: Row(
                                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                                  children: [
                                                                   
                                                                    Container(
                                                                      height: 30,
                                                                      width: 110,
                                                                      decoration: BoxDecoration(
                                                                        color: Color.fromARGB(153, 137, 241, 140),
                                                                        borderRadius: BorderRadius.circular(30)
                                                                      ),
                                                                      child: const Center(
                                                                        child: Text("Complete",
                                                                             style: TextStyle(
                                                                         color: Colors.green,
                                                                         fontWeight: FontWeight.bold
                                                                        ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                      Positioned(
                                          top: 5,
                                          left: 0,
                                          right: 0,
                                          child: Padding(
                                            padding: const EdgeInsets.only(left: 10, right: 10),
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                                              children: <Widget>[
                                                Container(
                                                  width: 100,
                                                  height: 100,
                                                  decoration: const BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                      Radius.circular(20.0),
                                                    ),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color: Color.fromARGB(
                                                            12, 172, 255, 244),
                                                        blurRadius: 50.0,
                                                        spreadRadius: 50.0,
                                                        offset: Offset(0.0, 0.0),
                                                      ),
                                                    ],
                                                  ),
                                                  child: const CircleAvatar(
                                                    maxRadius: 50,
                                                    backgroundImage: AssetImage(
                                                        'assets/images/1.jpg'),
                                                  ),
                                                ),
                                                // Row(
                                                //   mainAxisAlignment:
                                                //       MainAxisAlignment.end,
                                                //   children: [
                                                //     IconButton(
                                                //         onPressed: () {
                                                //           Navigator.pop(context);
                                                //         },
                                                //         icon: const Icon(
                                                //             Icons.close))
                                                //   ],
                                                // ),
                                                const Text(
                                                  "Rakib Kowshar",
                                                  style: TextStyle(
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                const Text(
                                                    'RakibKowshar@gmail.com',
                                                    style: TextStyle(
                                                      color: Colors.grey
                                                    ),
                                                    ),
                                                 SizedBox(height: 10,),
                                                          Container(
                                                          height: 70,
                                                          width:MediaQuery.of(context).size.width ,
                                                          decoration: BoxDecoration(
                                                            border: Border.all(color: Colors.grey),
                                                            borderRadius: BorderRadius.circular(10)
                                                          ),
                                                          child:  const Center(
                                                            child: Text("£078825 GBP",
                                                            style: TextStyle(
                                                              fontSize: 20,
                                                              fontWeight: FontWeight.bold
                                                            ),
                                                            ),
                                                          ),
                                                        ),
                                                        SizedBox(height: 10,),
                                                       const Row(
                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                          children: [
                                                            Text("You sent",
                                                             style: TextStyle(color: Colors.grey),
                                                            ),
                                                            Text("£240525",
                                                            style: TextStyle(
                                                               fontWeight: FontWeight.bold
                                                            ),
                                                            )
                                                          ],
                                                        ),
                                                              const Row(
                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                          children: [
                                                            Text("You sent",
                                                            style: TextStyle(color: Colors.grey),
                                                            ),
                                                            Text("£240.55",
                                                            style: TextStyle(
                                                               fontWeight: FontWeight.bold
                                                            ),
                                                            )
                                                          ],
                                                        ),
                                                              const Row(
                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                          children: [
                                                            Text("You sent",
                                                            style: TextStyle(color: Colors.grey),
                                                            ),
                                                            Text("£2405",
                                                            style: TextStyle(
                                                               fontWeight: FontWeight.bold
                                                            ),
                                                            )
                                                          ],
                                                        ),
                                             SizedBox(height: 10,),
                                                    Row(
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        Container(
                                                          height: 70,
                                                          width:MediaQuery.of(context).size.width/2.2 ,
                                                          decoration: BoxDecoration(
                                                            color: const Color.fromARGB(17, 111, 187, 250),
                                                            borderRadius: BorderRadius.circular(10)
                                                          ),
                                                          child: const Column(
                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                            children: [
                                                              Text("Exchange Rate",
                                                                   style: TextStyle(
                                                                color: Colors.grey
                                                              ),
                                                              ),
                                                              Text("£078825 GBP",
                                                              style: TextStyle(
                                                                fontWeight: FontWeight.bold
                                                              ),
                                                              )
                                                            ],
                                                          ),
                                                          
                                                        ),
                                                
                                                           
                                                              Container(
                                                          height: 70,
                                                          width:MediaQuery.of(context).size.width/2.2 ,
                                                          decoration: BoxDecoration(
                                                             color: const Color.fromARGB(12, 245, 111, 250),
                                                            borderRadius: BorderRadius.circular(10)
                                                          ),
                                                          child: const Column(
                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                            children: [
                                                              Text("Converted",
                                                                   style: TextStyle(
                                                                color: Colors.grey
                                                              ),
                                                              ),
                                                              Text("£078825 GBP",
                                                              style: TextStyle(
                                                                fontWeight: FontWeight.bold
                                                              ),
                                                              )
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    )
                                              ],
                                            ),
                                          ))
                                    ]);
                                  });
                            },
                            child: Container(
                              height: 150,
                              width: 160,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30)),
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CircleAvatar(
                                      maxRadius: 25,
                                      backgroundImage:
                                          AssetImage('assets/images/1.jpg'),
                                      child: Icon(Icons.people_alt_rounded),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      "Rakib Kowshar",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "£442",
                                      style: TextStyle(color: Colors.grey),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 150,
                            width: 160,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30)),
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CircleAvatar(
                                    maxRadius: 25,
                                    backgroundColor:
                                        Color.fromARGB(255, 236, 236, 236),
                                    child: Icon(Icons.add),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    "Add New",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "£442",
                                    style: TextStyle(color: Colors.grey),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Transactions",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          Text(
                            "Seel all",
                            style: TextStyle(color: Colors.blue),
                          )
                        ],
                      ),
                      Container(
                        height: 70,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    backgroundColor:
                                        Color.fromARGB(255, 236, 236, 236),
                                    child: Icon(
                                      Icons.diversity_2_sharp,
                                      size: 25,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 8),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Figma",
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          "15 june,2024",
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "- £144",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "visa Card",
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 70,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    backgroundColor:
                                        Color.fromARGB(255, 236, 236, 236),
                                    child: Icon(Icons.spa_outlined),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 8),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Sketch",
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          "13 june,2024",
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "- £144",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "Paypal",
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 70,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    backgroundColor:
                                        Color.fromARGB(255, 236, 236, 236),
                                    child: Icon(Icons.filter_vintage_outlined),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 8),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Slack",
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          "15 june,2024",
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "- £144",
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.grey,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "visa Card",
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  )),
            ],
          ),
        ),
      
      ),
      
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100),
              ),
              // shape: Border.all(color: VioletPureColor),
              child: Container(
                height: 50,
                width: 50,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromARGB(255, 130, 211, 248)),
                child: const Icon(
                  Icons.home_filled,
                  size: 25,
                  color: Colors.white,
                ),
              ),
              onPressed: () {}),
          FloatingActionButton(
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100),
              ),
              // shape: Border.all(color: VioletPureColor),
              child: Container(
                height: 50,
                width: 50,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromARGB(255, 236, 236, 236)),
                child: const Icon(
                  Icons.stacked_line_chart,
                  size: 25,
                ),
              ),
              onPressed: () {
  Navigator.push(context, MaterialPageRoute(builder: (Context)=>StatisticPage()));

              }),
          FloatingActionButton(
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100),
              ),
              // shape: Border.all(color: VioletPureColor),
              child: Container(
                height: 50,
                width: 50,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromARGB(255, 236, 236, 236)),
                child: const Icon(
                  Icons.qr_code_scanner_rounded,
                  size: 25,
                ),
              ),
              onPressed: () {}),
          FloatingActionButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100),
              ),
              backgroundColor: Colors.white,
              onPressed: () {},
              // shape: Border.all(color: VioletPureColor),
              child: Container(
                height: 50,
                width: 50,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromARGB(255, 236, 236, 236)),
                child: const Icon(
                  Icons.mark_as_unread_rounded,
                  size: 25,
                ),
              )),
          FloatingActionButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100),
              ),
              backgroundColor: Colors.white,
              onPressed: () {},
              child: Container(
                height: 50,
                width: 50,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromARGB(255, 236, 236, 236)),
                child: const Icon(
                  Icons.person_outline_sharp,
                  size: 25,
                ),
              )),
        ],
      ),
      // bottomNavigationBar: Container(
      //   height:  MediaQuery.of(context).size.width*.155,
      
      //   margin: EdgeInsets.all(20),
      //   decoration: BoxDecoration(
      //     borderRadius: BorderRadius.circular(50),
      //      color: Colors.white,
      //      boxShadow: [
      //             BoxShadow(
      //               color: Colors.black.withOpacity(.15),
      //               blurRadius: 30,
      //               offset: Offset(0, 10)
      //             )
      //           ],
      //   ),
      //   // child: Row(
      //   //   children: [
      //   //     Container(
      //   //       height: 50,
      //   //       width: 50,
      //   //       decoration: BoxDecoration(
      //   //         boxShadow: [
      //   //           BoxShadow(
      //   //             color: Colors.black.withOpacity(.15),
      //   //             blurRadius: 30,
      //   //             offset: Offset(0, 10)
      //   //           )
      //   //         ],
      //   //         color: Colors.white,
      //   //         shape: BoxShape.circle
      //   //       ),
              
      //   //     ),
      //   //   ],
      //   // ),
      // ),
    );
  }
}
