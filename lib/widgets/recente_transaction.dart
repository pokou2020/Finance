// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class RecenteTransaction extends StatelessWidget {
  final String nomReseau;
  final String date;
  final String prix;
  final IconData iconReseau;
  final String nomCarte;


  const RecenteTransaction({
    Key? key,
    required this.nomReseau,
    required this.date,
    required this.prix,
    required this.iconReseau,
    required this.nomCarte,
   
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20.w,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.white),
      child:  Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 236, 236, 236),
                  child: Icon(iconReseau),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 2.h),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        nomReseau,
                        style: TextStyle(
                            fontSize: 15.sp, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        date,
                        style: const TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      prix,
                      style: TextStyle(
                          fontSize: 15.sp,
                          
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      nomCarte,
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
