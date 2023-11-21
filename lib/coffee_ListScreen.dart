import 'package:coffee_black_screen/constants/colors.dart';
import 'package:flutter/material.dart';

class CoffeListScreen extends StatelessWidget {
  const CoffeListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        // child: Column(
        //   children:[
        //     Container(
        //
        //       child: Row(
        //         children:[
        //           Container(
        //
        //             child: Padding(
        //               padding: const EdgeInsets.all(8.0),
        //               child: Image.asset('assets/images/janko-ferlic.jpg'),
        //             ),
        //             width: 180,
        //             decoration: BoxDecoration(
        //
        //               color: AppColors.colorGreyDark,
        //             ),
        //
        //           ),
        //           Container(
        //             child: Padding(
        //               padding: const EdgeInsets.all(8.0),
        //               child: Image.asset('assets/images/janko-ferlic.jpg'),
        //             ),
        //             width: 180,
        //             color: AppColors.colorGreyDark,
        //           ),
        //         ],
        //       ),
        //     ),
        //   ],
        // ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: AppColors.colorGreyDark,
        ),
        // child: Padding(
        //   padding: const EdgeInsets.only(top: 8,),
        //   child: Column(
        //     children: [
        //       Row(
        //         children: [
        //           Container(
        //             height: 100,
        //             width: 180,
        //             padding: EdgeInsets.only(left: 16, top: 16),
        //             child: Column(
        //              children: [
        //                ClipRRect(
        //                  child: Image.asset('assets/images/black.jpeg'),
        //                  borderRadius: BorderRadius.circular(16),
        //                ),
        //                Padding(
        //                  padding: const EdgeInsets.all(8.0),
        //                  child: Text('Black Coffee',
        //                    style: TextStyle(
        //                      fontSize: 20,
        //                      fontWeight: FontWeight.bold,
        //                      color: AppColors.colorWhiteHighEmp
        //                    ),
        //
        //                  ),
        //                ),
        //              ],
        //            ),
        //           ),
        //           Container(
        //             height: 100,
        //             width: 180,
        //             padding: EdgeInsets.only(left: 16, top: 16),
        //             child: Column(
        //               children: [
        //                 ClipRRect(
        //                   child: Image.asset('assets/images/black.jpeg'),
        //                   borderRadius: BorderRadius.circular(16),
        //                 ),
        //                 Padding(
        //                   padding: const EdgeInsets.all(8.0),
        //                   child: Text('Black Coffee',
        //                     style: TextStyle(
        //                         fontSize: 20,
        //                         fontWeight: FontWeight.bold,
        //                         color: AppColors.colorWhiteHighEmp
        //                     ),
        //
        //                   ),
        //                 ),
        //               ],
        //             ),
        //           ),
        //         ],
        //       ),
        //     ],
        //   ),
        // ),
      ),
    );
  }
}
