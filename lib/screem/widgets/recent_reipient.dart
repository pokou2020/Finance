import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class RecentReipient extends StatelessWidget {
  final String imagePersonne;
  final String nomPersonne;
  final String prix;
  const RecentReipient({
    super.key,
    required this.imagePersonne,
    required this.nomPersonne,
    required this.prix,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45.w,
      width: 45.w,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(30)),
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             CircleAvatar(
              maxRadius: 25,
              backgroundImage: AssetImage(imagePersonne),
            ),
            SizedBox(
              height: 2.h,
            ),
            Text(
              nomPersonne,
              style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
            ),
             Text(
              prix,
              style: TextStyle(color: Colors.grey),
            )
          ],
        ),
      ),
    );
  }
}
