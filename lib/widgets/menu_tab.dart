import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class MenuTab extends StatelessWidget {
  final String nomMenu;
  final IconData iconMenu;

  

  const MenuTab({super.key, required this.nomMenu, required this.iconMenu, });

  @override
  Widget build(BuildContext context) {
    return          Container(
                            height: 22.w,
                            width: 22.w,
                            decoration: const BoxDecoration(
                                color: Colors.white, shape: BoxShape.circle),
                            child:  Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(iconMenu),
                                Text(nomMenu)
                              ],
                            ),
                          );
  }
}