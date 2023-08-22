// ignore_for_file: prefer_const_constructors

import 'package:citreas/config/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WalletDetails extends StatelessWidget {
  const WalletDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [primaryColor, xverseColor],
          ),
        ),
        child: Container(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 5,
                  ),
                  child: Row(
                    children: [
                      Text(
                        'Main Wallet',
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .copyWith(
                              fontSize: 20,
                              fontFamily: 'NunitoSans-Regular',
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                    ],
                  ),
                ),
                // SizedBox(
                //   height: 7,
                // ),
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 10, 80, 9),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Account Balance',
                            style:
                                Theme.of(context).textTheme.bodySmall!.copyWith(
                                      color: Colors.white.withOpacity(.7),
                                      fontFamily: 'NunitoSans-Regular',
                                      fontWeight: FontWeight.normal,
                                      fontSize: 17,
                                    ),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text(
                            '\$349.92',
                            style:
                                Theme.of(context).textTheme.bodyLarge!.copyWith(
                                      color: Colors.white,
                                      fontFamily: 'NunitoSans-Bold',
                                      fontWeight: FontWeight.w800,
                                      fontSize: 30,
                                    ),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.arrow_upward_rounded,
                                color: risingColor,
                              ),
                              SizedBox(width: 8),
                              Text(
                                '1,3%',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                      fontFamily: 'NunitoSans-Medium',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: risingColor,
                                    ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text(
                            'All time profit',
                            style:
                                Theme.of(context).textTheme.bodySmall!.copyWith(
                                      color: Colors.white.withOpacity(.7),
                                      fontFamily: 'NunitoSans-Regular',
                                      fontWeight: FontWeight.normal,
                                      fontSize: 17,
                                    ),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text(
                            '\$312.64',
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(
                                    color: Colors.white,
                                    fontFamily: 'NunitoSans-Bold',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 27),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.arrow_upward_rounded,
                                color: risingColor,
                              ),
                              SizedBox(width: 8),
                              Text(
                                '112.32%',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                      fontFamily: 'NunitoSans-Medium',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: risingColor,
                                    ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      // SizedBox(
                      //   width: 70,
                      // ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Monthly profit',
                            style:
                                Theme.of(context).textTheme.bodySmall!.copyWith(
                                      color: Colors.white.withOpacity(.7),
                                      fontFamily: 'NunitoSans-Regular',
                                      fontWeight: FontWeight.normal,
                                      fontSize: 17,
                                    ),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text(
                            '\$16.64',
                            style:
                                Theme.of(context).textTheme.bodyLarge!.copyWith(
                                      color: Colors.white,
                                      fontFamily: 'NunitoSans-Bold',
                                      fontWeight: FontWeight.w800,
                                      fontSize: 30,
                                    ),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.arrow_upward_rounded,
                                color: risingColor,
                              ),
                              SizedBox(width: 8),
                              Text(
                                '14,5%',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                      fontFamily: 'NunitoSans-Medium',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: risingColor,
                                    ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text(
                            'All time loss',
                            style:
                                Theme.of(context).textTheme.bodySmall!.copyWith(
                                      color: Colors.white.withOpacity(.7),
                                      fontFamily: 'NunitoSans-Regular',
                                      fontWeight: FontWeight.normal,
                                      fontSize: 17,
                                    ),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text(
                            '\$12.64',
                            style:
                                Theme.of(context).textTheme.bodyLarge!.copyWith(
                                      color: Colors.white,
                                      fontFamily: 'NunitoSans-Bold',
                                      fontWeight: FontWeight.w600,
                                      fontSize: 27,
                                    ),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.arrow_downward_rounded,
                                color: percentageColor,
                              ),
                              SizedBox(width: 8),
                              Text('1.32%',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(
                                        fontFamily: 'NunitoSans-Medium',
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: percentageColor,
                                      )),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}



// class WalletDetails extends StatelessWidget {
//   const WalletDetails({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       //width: 400,
//       //height: 500,

//       child: Column(
//         // mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Row(
//             children: [
//               Text(
//                 'Main Wallet',
//                 style: Theme.of(context).textTheme.headlineMedium!.copyWith(
//                       fontSize: 20,
//                       fontFamily: 'NunitoSans-Regular',
//                       color: Colors.white,
//                       fontWeight: FontWeight.w600,
//                     ),
//               ),
//             ],
//           ),
//           SizedBox(
//             height: 12,
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 //mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text(
//                     'Account Balance',
//                     style: Theme.of(context).textTheme.bodySmall!.copyWith(
//                           color: Colors.white.withOpacity(.7),
//                           fontFamily: 'NunitoSans-Regular',
//                           fontWeight: FontWeight.normal,
//                           fontSize: 17,
//                         ),
//                   ),
//                   SizedBox(
//                     height: 7,
//                   ),
//                   Text(
//                     '\$349.92',
//                     style: Theme.of(context).textTheme.bodyLarge!.copyWith(
//                           color: Colors.white,
//                           fontFamily: 'NunitoSans-Bold',
//                           fontWeight: FontWeight.w800,
//                           fontSize: 30,
//                         ),
//                   ),
//                   SizedBox(
//                     height: 7,
//                   ),
//                   Row(
//                     children: [
//                       Icon(
//                         Icons.arrow_upward_rounded,
//                         color: risingColor,
//                       ),
//                       SizedBox(width: 8),
//                       Text(
//                         '1,3%',
//                         style: Theme.of(context).textTheme.bodyMedium!.copyWith(
//                               fontFamily: 'NunitoSans-Medium',
//                               fontSize: 16,
//                               fontWeight: FontWeight.w500,
//                               color: risingColor,
//                             ),
//                       ),
//                     ],
//                   ),
//                   SizedBox(
//                     height: 7,
//                   ),
//                   Text(
//                     'All time profit',
//                     style: Theme.of(context).textTheme.bodySmall!.copyWith(
//                           color: Colors.white.withOpacity(.7),
//                           fontFamily: 'NunitoSans-Regular',
//                           fontWeight: FontWeight.normal,
//                           fontSize: 17,
//                         ),
//                   ),
//                   SizedBox(
//                     height: 7,
//                   ),
//                   Text(
//                     '\$312.64',
//                     style: Theme.of(context).textTheme.bodyLarge!.copyWith(
//                         color: Colors.white,
//                         fontFamily: 'NunitoSans-Bold',
//                         fontWeight: FontWeight.w600,
//                         fontSize: 27),
//                   ),
//                   SizedBox(
//                     height: 7,
//                   ),
//                   Row(
//                     children: [
//                       Icon(
//                         Icons.arrow_upward_rounded,
//                         color: risingColor,
//                       ),
//                       SizedBox(width: 8),
//                       Text(
//                         '112.32%',
//                         style: Theme.of(context).textTheme.bodyMedium!.copyWith(
//                               fontFamily: 'NunitoSans-Medium',
//                               fontSize: 16,
//                               fontWeight: FontWeight.w500,
//                               color: risingColor,
//                             ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     'Monthly profit',
//                     style: Theme.of(context).textTheme.bodySmall!.copyWith(
//                           color: Colors.white.withOpacity(.7),
//                           fontFamily: 'NunitoSans-Regular',
//                           fontWeight: FontWeight.normal,
//                           fontSize: 17,
//                         ),
//                   ),
//                   SizedBox(
//                     height: 7,
//                   ),
//                   Text(
//                     '\$16.64',
//                     style: Theme.of(context).textTheme.bodyLarge!.copyWith(
//                           color: Colors.white,
//                           fontFamily: 'NunitoSans-Bold',
//                           fontWeight: FontWeight.w800,
//                           fontSize: 30,
//                         ),
//                   ),
//                   SizedBox(
//                     height: 7,
//                   ),
//                   Row(
//                     children: [
//                       Icon(
//                         Icons.arrow_upward_rounded,
//                         color: risingColor,
//                       ),
//                       SizedBox(width: 8),
//                       Text(
//                         '14,5%',
//                         style: Theme.of(context).textTheme.bodyMedium!.copyWith(
//                               fontFamily: 'NunitoSans-Medium',
//                               fontSize: 16,
//                               fontWeight: FontWeight.w500,
//                               color: risingColor,
//                             ),
//                       ),
//                     ],
//                   ),
//                   SizedBox(
//                     height: 7,
//                   ),
//                   Text(
//                     'All time loss',
//                     style: Theme.of(context).textTheme.bodySmall!.copyWith(
//                           color: Colors.white.withOpacity(.7),
//                           fontFamily: 'NunitoSans-Regular',
//                           fontWeight: FontWeight.normal,
//                           fontSize: 17,
//                         ),
//                   ),
//                   SizedBox(
//                     height: 7,
//                   ),
//                   Text(
//                     '\$12.64',
//                     style: Theme.of(context).textTheme.bodyLarge!.copyWith(
//                           color: Colors.white,
//                           fontFamily: 'NunitoSans-Bold',
//                           fontWeight: FontWeight.w600,
//                           fontSize: 27,
//                         ),
//                   ),
//                   SizedBox(
//                     height: 7,
//                   ),
//                   Row(
//                     children: [
//                       Icon(
//                         Icons.arrow_downward_rounded,
//                         color: percentageColor,
//                       ),
//                       SizedBox(width: 8),
//                       Text('1.32%',
//                           style:
//                               Theme.of(context).textTheme.bodyMedium!.copyWith(
//                                     fontFamily: 'NunitoSans-Medium',
//                                     fontSize: 16,
//                                     fontWeight: FontWeight.w500,
//                                     color: percentageColor,
//                                   )),
//                     ],
//                   )
//                 ],
//               )
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
