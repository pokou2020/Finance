import 'package:finance/statistics/pages/home_page.dart';
import 'package:finance/statistics/pages/statistic_page.dart';
import 'package:flutter/material.dart';

class FilterTab extends StatefulWidget {
  const FilterTab({super.key});

  @override
  State<FilterTab> createState() => _FilterTabState();
}

class _FilterTabState extends State<FilterTab> {
  @override
  Widget build(BuildContext context) {
    return Row(
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
              onPressed: () {
                 Navigator.push(context, MaterialPageRoute(builder: (Context)=>HomePage()));
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
      );
  }
}