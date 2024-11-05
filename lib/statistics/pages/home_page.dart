import 'package:finance/screem/widgets/filter_tab.dart';
import 'package:finance/screem/widgets/menu_tab.dart';
import 'package:finance/screem/widgets/recent_reipient.dart';
import 'package:finance/screem/widgets/recente_transaction.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 231, 231, 231),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(left: 2.h, right: 2.h),
            child: Column(
              children: [
                Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "welcome Back",
                                  style: TextStyle(
                                      fontSize: 18.sp, color: Colors.grey),
                                ),
                                Text(
                                  "Hello Smith",
                                  style: TextStyle(
                                      fontSize: 22.sp,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            Stack(
                              children: [
                                Container(
                                  height: 14.w,
                                  width: 14.w,
                                  decoration: const BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle),
                                  child: const Icon(
                                      Icons.notifications_none_sharp),
                                ),
                                Positioned(
                                    left: 9.w,
                                    child: Container(
                                      height: 1.h,
                                      width: 1.h,
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
                        Text(
                          "£474.215",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 30.sp),
                        ),
                         Gap(7.w),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            const MenuTab(
                              iconMenu: Icons.subdirectory_arrow_left_sharp,
                              nomMenu: "Send",
                            ),
                            const MenuTab(
                              iconMenu: Icons.subdirectory_arrow_left_sharp,
                              nomMenu: "Receive",
                            ),
                            const MenuTab(
                              iconMenu: Icons.family_restroom,
                              nomMenu: "Family",
                            ),
                            Container(
                              height: 22.w,
                              width: 22.w,
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
                     Gap(7.w),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Recipients",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20.sp),
                    ),
                    const Text(
                      "Seel all",
                      style: TextStyle(color: Colors.blue),
                    )
                  ],
                ),
                SizedBox(
                  height: 2.h,
                ),
                Expanded(
                    flex: 5,
                    child: ListView(
                      children: [
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            RecentReipient(
                              imagePersonne: "assets/images/3.jpg",
                              nomPersonne: "Helena Smith",
                              prix: "£442",
                            ),
                            RecentReipient(
                              imagePersonne: "assets/images/2.jpg",
                              nomPersonne: "Tyler Carter",
                              prix: "£15442",
                            ),
                          ],
                        ),
                        Gap(1.h),
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
                                          height: MediaQuery.of(context)
                                              .size
                                              .height,
                                          top: MediaQuery.of(context)
                                                      .size
                                                      .height /
                                                  2 -
                                              300,
                                          child: Container(
                                            height: MediaQuery.of(context)
                                                .size
                                                .height,
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          top: 33.w,
                                          left: 0,
                                          right: 0,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                height: 7.w,
                                                width: 25.w,
                                                decoration: BoxDecoration(
                                                    color: const Color.fromARGB(
                                                        153, 137, 241, 140),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30)),
                                                child: const Center(
                                                  child: Text(
                                                    "Complete",
                                                    style: TextStyle(
                                                        color: Colors.green,
                                                        fontWeight:
                                                            FontWeight.bold),
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
                                              padding: const EdgeInsets.only(
                                                  left: 10, right: 10),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                children: <Widget>[
                                                  Container(
                                                    width: 20.w,
                                                    height: 20.w,
                                                    decoration:
                                                        const BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.all(
                                                        Radius.circular(20.0),
                                                      ),
                                                      boxShadow: [
                                                        BoxShadow(
                                                          color: Color.fromARGB(
                                                              12,
                                                              172,
                                                              255,
                                                              244),
                                                          blurRadius: 50.0,
                                                          spreadRadius: 50.0,
                                                          offset:
                                                              Offset(0.0, 0.0),
                                                        ),
                                                      ],
                                                    ),
                                                    child: const CircleAvatar(
                                                      maxRadius: 50,
                                                      backgroundImage: AssetImage(
                                                          'assets/images/1.jpg'),
                                                    ),
                                                  ),
                                                  Text(
                                                    "Rakib Kowshar",
                                                    style: TextStyle(
                                                        fontSize: 18.sp,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  const Text(
                                                    'RakibKowshar@gmail.com',
                                                    style: TextStyle(
                                                        color: Colors.grey),
                                                  ),
                                                  Gap(2.h),
                                                  Container(
                                                    height: 20.w,
                                                    width:
                                                        MediaQuery.of(context)
                                                            .size
                                                            .width,
                                                    decoration: BoxDecoration(
                                                        border: Border.all(
                                                            color: Colors.grey),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10)),
                                                    child: Center(
                                                      child: Text(
                                                        "£078825 GBP",
                                                        style: TextStyle(
                                                            fontSize: 20.sp,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                    ),
                                                  ),
                                                  Gap(2.h),
                                                  const Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text(
                                                        "You sent",
                                                        style: TextStyle(
                                                            color: Colors.grey),
                                                      ),
                                                      Text(
                                                        "£240525",
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      )
                                                    ],
                                                  ),
                                                  const Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text(
                                                        "You sent",
                                                        style: TextStyle(
                                                            color: Colors.grey),
                                                      ),
                                                      Text(
                                                        "£240.55",
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      )
                                                    ],
                                                  ),
                                                  const Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text(
                                                        "You sent",
                                                        style: TextStyle(
                                                            color: Colors.grey),
                                                      ),
                                                      Text(
                                                        "£2405",
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      )
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: 2.h,
                                                  ),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Container(
                                                        height: 18.w,
                                                        width: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width /
                                                            2.2,
                                                        decoration: BoxDecoration(
                                                            color: const Color
                                                                .fromARGB(17,
                                                                111, 187, 250),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10)),
                                                        child: const Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Text(
                                                              "Exchange Rate",
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .grey),
                                                            ),
                                                            Text(
                                                              "£078825 GBP",
                                                              style: TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold),
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                      Container(
                                                        height: 18.w,
                                                        width: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width /
                                                            2.2,
                                                        decoration: BoxDecoration(
                                                            color: const Color
                                                                .fromARGB(12,
                                                                245, 111, 250),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10)),
                                                        child: const Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Text(
                                                              "Converted",
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .grey),
                                                            ),
                                                            Text(
                                                              "£078825 GBP",
                                                              style: TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold),
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
                              child: const RecentReipient(
                                imagePersonne: "assets/images/1.jpg",
                                nomPersonne: "Rakib Kowshar",
                                prix: "£442",
                              ),
                            ),
                            const RecentReipient(
                              imagePersonne: "assets/images/1.jpg",
                              nomPersonne: "Rakib Kowshar",
                              prix: "£442",
                            ),
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
                        const RecenteTransaction(
                          nomReseau: "Figma",
                          date: "16 june, 2024",
                          iconReseau: Icons.fluorescent,
                          nomCarte: 'PayPal',
                          prix: "- £154",
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        const RecenteTransaction(
                          nomReseau: "Figma",
                          date: "16 june, 2024",
                          iconReseau: Icons.face,
                          nomCarte: 'PayPal',
                          prix: "- £154",
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        const RecenteTransaction(
                          nomReseau: "Stetch",
                          date: "15 june, 2024",
                          iconReseau: Icons.offline_bolt,
                          nomCarte: 'visa Card',
                          prix: "- £144",
                        )
                      ],
                    )),
              ],
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FilterTab());
  }
}
