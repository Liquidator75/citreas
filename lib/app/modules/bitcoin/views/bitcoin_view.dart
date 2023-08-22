// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_interpolation_to_compose_strings, must_be_immutable, sized_box_for_whitespace, unrelated_type_equality_checks, sort_child_properties_last

import 'package:citreas/app/modules/widgets/line_button.dart';
import 'package:citreas/config/colors.dart';
import 'package:citreas/models/chartModel.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../controllers/bitcoin_controller.dart';

class BitcoinView extends GetView<BitcoinController> {
  @override
  BitcoinView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> arguments = Get.arguments;
    final String symbol = arguments['symbol'];
    final String name = arguments['name'];
    final double currentPrice = arguments['currentPrice'];
    final double totalVolume = arguments['24hVolume'];
    final double high24H = arguments['24hHigh'];
    final double low24H = arguments['24hLow'];
    final String image = arguments['image'];
    //final String coinId = Get.arguments['coinid'];

    final BitcoinController controller = Get.put(BitcoinController());

    //final String id = arguments['coinid'];
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 17),
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                SizedBox(
                  height: 80,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: (() => Get.back()),
                      icon: Icon(
                        CupertinoIcons.arrow_left,
                      ),
                    ),
                    Column(
                      children: [
                        Text(
                          symbol,
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    fontFamily: 'NunitoSans-Bold',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 21,
                                    color: Colors.black,
                                  ),
                        ),
                        Text(
                          name,
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    fontFamily: 'NunitoSans-Meduim',
                                    fontWeight: FontWeight.normal,
                                    fontSize: 16,
                                    color: textColor,
                                  ),
                        ),
                      ],
                    ),
                    Icon(
                      CupertinoIcons.heart,
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: textColor.withOpacity(.1),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                    ),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.network(
                            image,
                            width: 18,
                          ),
                          Text(
                            "$name Price",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              fontFamily: 'NunitoSans-Regular',
                              color: Colors.black,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "\$${NumberFormat('#,##0.00').format(currentPrice)}",
                        style: TextStyle(
                          fontSize: 30,
                          fontFamily: 'NunitoSans-Bold',
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: risingColor.withOpacity(
                                  0.3), // Set the desired background color
                            ),
                            height: 30,
                            width: 75,
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 8,
                              ), // Adjust the horizontal spacing as needed
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    CupertinoIcons.arrowtriangle_up_fill,
                                    size: 16,
                                    color: risingColor,
                                  ),
                                  Text(
                                    '20%',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall!
                                        .copyWith(
                                          fontFamily: 'NunitoSans-Bold',
                                          fontWeight: FontWeight.w700,
                                          color: risingColor,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            '+0,9%',
                            style:
                                Theme.of(context).textTheme.bodySmall!.copyWith(
                                      fontFamily: 'NunitoSans-Bold',
                                      fontWeight: FontWeight.w700,
                                      color: risingColor,
                                    ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(25),
                            topRight: Radius.circular(25),
                          ),
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 18,
                            ),
                            Container(
                              width: 370,
                              height: 80,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: textColor.withOpacity(.2),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        '24h Volume',
                                        style: TextStyle(
                                          fontFamily: 'NunitoSans-Medium',
                                          fontSize: 10,
                                          fontWeight: FontWeight.normal,
                                          color: textColor,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "\$${NumberFormat('#,###.0').format(totalVolume)}",
                                        style: TextStyle(
                                            fontFamily: 'NunitoSans-Medium',
                                            fontSize: 13,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.black),
                                      ),
                                    ],
                                  ),
                                  VerticalDivider(
                                    color: textColor,
                                    thickness: 0.4,
                                    indent: 8,
                                    endIndent: 8,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        '24h Low',
                                        style: TextStyle(
                                          fontFamily: 'NunitoSans-Medium',
                                          fontSize: 10,
                                          fontWeight: FontWeight.normal,
                                          color: textColor,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "\$${NumberFormat('#,##0.00').format(low24H)}",
                                        style: TextStyle(
                                            fontFamily: 'NunitoSans-Medium',
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.black),
                                      ),
                                    ],
                                  ),
                                  VerticalDivider(
                                    color: textColor,
                                    thickness: 0.4,
                                    indent: 8,
                                    endIndent: 8,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        '24h High',
                                        style: TextStyle(
                                          fontFamily: 'NunitoSans-Medium',
                                          fontSize: 10,
                                          fontWeight: FontWeight.normal,
                                          color: textColor,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "\$${NumberFormat('#,##0.00').format(high24H)}",
                                        style: TextStyle(
                                            fontFamily: 'NunitoSans-Medium',
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.black),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Center(
                              child: Container(
                                height: Get.height * 0.03,
                                child: ListView.builder(
                                  shrinkWrap: true,
                                  scrollDirection: Axis.horizontal,
                                  itemCount: controller.text.length,
                                  itemBuilder: (context, index) {
                                    return Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: Get.width * 0.02),
                                      child: GestureDetector(
                                        onTap: () {
                                          controller.textBool = List.generate(
                                              controller.text.length,
                                              (_) => false);
                                          controller.textBool[index] = true;
                                          controller
                                              .setDays(controller.text[index]);
                                          controller.getChart();
                                        },
                                        child: Container(
                                          padding: EdgeInsets.symmetric(
                                            horizontal: Get.width * 0.03,
                                            vertical: Get.height * 0.005,
                                          ),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            color: controller.textBool[index]
                                                ? primaryColor
                                                : Colors.transparent,
                                          ),
                                          child: Text(
                                            controller.text[index],
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: controller.textBool[index]
                                                  ? Colors.white
                                                  : Colors.black,
                                              fontFamily: 'NunitoSans-Medium',
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ),
                            Obx(
                              () => Container(
                                height: Get.height * 0.35,
                                width: Get.width * 1.2,
                                // color: Colors.amber,
                                child: controller.isLoading.value
                                    ? Center(
                                        child: CircularProgressIndicator(
                                          color: primaryColor,
                                        ),
                                      )
                                    : controller.itemChart.value == null
                                        ? Padding(
                                            padding: EdgeInsets.all(6),
                                            child: Center(
                                              child: Text(
                                                'Attention this API is free, so you cannot send multiple requests per second, please wait and try again later.',
                                                style: TextStyle(fontSize: 18),
                                              ),
                                            ),
                                          )
                                        : SfCartesianChart(
                                            trackballBehavior:
                                                controller.trackballBehavior,
                                            zoomPanBehavior: ZoomPanBehavior(
                                              enablePinching: true,
                                              zoomMode: ZoomMode.x,
                                            ),
                                            series: <CandleSeries>[
                                              CandleSeries<ChartModel, int>(
                                                enableSolidCandles: true,
                                                enableTooltip: true,
                                                bullColor: risingColor,
                                                bearColor: percentageColor,
                                                dataSource:
                                                    controller.itemChart.value,
                                                xValueMapper:
                                                    (ChartModel sales, _) =>
                                                        sales.time,
                                                lowValueMapper:
                                                    (ChartModel sales, _) =>
                                                        sales.low,
                                                highValueMapper:
                                                    (ChartModel sales, _) =>
                                                        sales.high,
                                                openValueMapper:
                                                    (ChartModel sales, _) =>
                                                        sales.open,
                                                closeValueMapper:
                                                    (ChartModel sales, _) =>
                                                        sales.close,
                                                animationDuration: 10,
                                              ),
                                            ],
                                          ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 13,
                ),
                SizedBox(
                  height: 13,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    LinedButton(
                      sidedColor: primaryColor,
                      signup: 'Buy $name',
                      onPressed: () {},
                      buttonTextColor: primaryColor,
                      color: primaryColor,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
