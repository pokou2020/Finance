
import 'package:finance/widgets/filter_tab.dart';
import 'package:finance/widgets/recente_transaction.dart';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';

class StatisticPage extends StatefulWidget {
  const StatisticPage({super.key});

  @override
  State<StatisticPage> createState() => _StatisticPageState();
}

class _StatisticPageState extends State<StatisticPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 231, 231, 231),
      body: SafeArea(child: Padding(
        padding:  EdgeInsets.only(left: 3.h, right: 3.h),
        child: Column(
          children: [
                Expanded(
                  flex: 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  
                    children: [
                    
                       Text(
                        "Report",
                        style: TextStyle(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold),
                      ),
                      Row(
                        
                        children: [
                          Container(
                            height: 14.w,
                            width: 14.w,
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle),
                            child: const Icon(
                                Icons.download),
                          ),
                         Gap(3.w),
                          Container(
                           height: 15.w,
                            width: 15.w,
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle),
                            child: const Icon(
                                Icons.calendar_month),
                          ),
                        ],
                      )
                    ],
                  )),
                  Expanded(
                    flex: 3,
                    child: Container(
              
                    width: MediaQuery.of(context).size.width,
                    
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 14.w,
                        width: MediaQuery.of(context).size.width,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0, right: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 8.w,
                                    width: 27.w,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(width: 1,color: Colors.grey)
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        Container(
                                          child: Text("Expenses"),
                                          
                                        ),
                                        
                                        const Icon(Icons.arrow_drop_down)
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                                     Row(
                                    
                                children: [
                                  const Text("Day",
                                  style: TextStyle(
                                    color: Colors.grey
                                  ),
                                  ),
                                  Gap(2.h),
                                  Container(
                                  height: 8.w,
                                    width: 20.w,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(width: 1,color: Colors.grey)
                                    ),
                                    child:      Center(child: Text("Week")),
                                  ),
                                  Gap(2.h),
                                  const Text("Month",
                                  style: TextStyle(
                                    color: Colors.grey
                                  ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height/3,
                          width: MediaQuery.of(context).size.width,
                          child: AspectRatio(
                           
                            aspectRatio:1,
                            child:  BarChart(
                              BarChartData(
                                 
                               titlesData: const FlTitlesData(
                                show: true,
                                leftTitles: AxisTitles(
                                  sideTitles: SideTitles(showTitles: false)
                                ),
                                 topTitles: AxisTitles(
                                  sideTitles: SideTitles(showTitles: false)
                                ),
                                 rightTitles: AxisTitles(
                                  sideTitles: SideTitles(showTitles: false)
                                )
                               ),
                                borderData: FlBorderData(
                                  show: false,
                                
                                ),
                              
                                barGroups: [
                                    BarChartGroupData(x: 1,
                                  barRods: [
                                    BarChartRodData(toY: 30,
                                    color: Color.fromARGB(255, 41, 128, 241),
                                    width: 25,
                                    borderRadius: BorderRadius.circular(5)
                                    )
                                  ]
                                  ),
                                    BarChartGroupData(x: 2,
                                  barRods: [
                                    BarChartRodData(toY: 25,
                                    color: const Color.fromARGB(255, 233, 30, 182),
                                    width: 25,
                                    borderRadius: BorderRadius.circular(5)
                                    )
                                  ]
                                  ),
                                    BarChartGroupData(x: 3,
                                  barRods: [
                                    BarChartRodData(toY: 30,
                                    color: Color.fromARGB(255, 41, 128, 241),
                                    width: 25,
                                    borderRadius: BorderRadius.circular(5)
                                    )
                                  ]
                                  ),
                                    BarChartGroupData(x: 4,
                                  barRods: [
                                    BarChartRodData(toY: 45,
                                    color: const Color.fromARGB(255, 233, 30, 182),
                                    width: 25,
                                    borderRadius: BorderRadius.circular(5)
                                    )
                                  ]
                                  ),
                                    BarChartGroupData(x: 5,
                                  barRods: [
                                    BarChartRodData(toY: 15,
                                  color: Color.fromARGB(255, 41, 128, 241),
                                    width: 25,
                                    borderRadius: BorderRadius.circular(5)
                                    )
                                  ]
                                  ),
                                  BarChartGroupData(x: 6,
                                  barRods: [
                                    BarChartRodData(toY: 18,
                                  color: const Color.fromARGB(255, 233, 30, 182),
                                    width: 25,
                                    borderRadius: BorderRadius.circular(5)
                                    )
                                  ]
                                  ),
                                        BarChartGroupData(x: 7,
                                  barRods: [
                                    BarChartRodData(
                                      fromY: 0,
                                      toY: 33,
                             color: Color.fromARGB(255, 41, 128, 241),
                                    width: 25,
                                    
                                    borderRadius: BorderRadius.circular(5)
                                    )
                                  ]
                                  )
                                ]
                              )),
                              ),
                        ),
                      ],
                    ),
                  )),
                            Expanded(
                  flex: 3,
                  child: ListView(
                    children: [
    
                      const SizedBox(
                        height: 15,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Juin",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                        
                        ],
                      ),
                     
                     
                        Gap(2.h),
                      const RecenteTransaction(
                    nomReseau: "Stetch",
                    date: "15 june, 2024",
                     iconReseau: Icons.diversity_2_sharp,
                    nomCarte: 'visa Card',
                    prix: "- £144",
                  ),
                    Gap(2.h),
                      const RecenteTransaction(
                    nomReseau: "Stetch",
                    date: "18 june, 2024",
                     iconReseau: Icons.filter_vintage_outlined,
                    nomCarte: 'visa PayPal',
                    prix: "- £1774",
                  ),
                  Gap(2.h),
                         const RecenteTransaction(
                    nomReseau: "Stetch",
                    date: "15 june, 2024",
                     iconReseau: Icons.filter_vintage_outlined,
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
      floatingActionButton: FilterTab()
    );
  }
}
