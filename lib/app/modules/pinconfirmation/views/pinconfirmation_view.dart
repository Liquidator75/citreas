// ignore_for_file: prefer_const_constructors, sort_child_properties_last, must_be_immutable, override_on_non_overriding_member, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, unrelated_type_equality_checks

import 'package:citreas/app/modules/pinconfirmation/controllers/pinconfirmation_controller.dart';
import 'package:citreas/app/modules/transactionSuccess/views/transaction_success_view.dart';
import 'package:citreas/app/modules/widgets/line_button.dart';
import 'package:citreas/config/colors.dart';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

class PinconfirmationView extends GetView<PinconfirmationController> {
  final PinconfirmationController controller =
      Get.put(PinconfirmationController());
  PinconfirmationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Column(
        children: [
          SizedBox(
            height: 140,
          ),
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Enter Your Secret PIN",
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(color: Colors.white, fontSize: 15),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 100.0,
                    child: Obx(
                      () => Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          for (var i = 0; i < controller.activities.length; i++)
                            AnimationBoxItem(
                              clear: controller.clears[i].value,
                              active: controller
                                  .activities[i % controller.values.length]
                                  .value,
                              value: controller.numbers[i],
                            ),
                        ],
                      ),
                    ),
                  ),
                  Text(
                    controller.message.value,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: controller.message == "Success"
                            ? risingColor
                            : percentageColor,
                        fontSize: 15,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: GridView.builder(
              padding: EdgeInsets.all(0.0),
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 1.3,
              ),
              itemBuilder: (context, index) => Container(
                margin: EdgeInsets.all(4.0),
                width: 50,
                height: 50,
                child: index == 15
                    ? MaterialButton(
                        onPressed: () {
                          controller.updateInputText(index);
                        },
                        minWidth: 50,
                        height: 55,
                        child: Text(
                          "0",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(60),
                        ),
                      )
                    : Center(
                        child: MaterialButton(
                          onPressed: () {
                            controller.updateInputText(index);
                          },
                          minWidth: 50,
                          height: 55,
                          child: index == 11
                              ? Icon(
                                  Icons.backspace,
                                  color: Colors.white,
                                )
                              : Text(
                                  "${controller.numbers[index == 10 ? index - 1 : index]}",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(60),
                          ),
                        ),
                      ),
              ),
              itemCount: 12,
            ),
          ),
          SizedBox(
            height: 60,
            child: Expanded(
              child: LinedButton(
                sidedColor: Colors.white,
                buttonTextColor: Colors.white,
                color: primaryColor,
                signup: 'Next',
                onPressed: () => Get.to(TransactionSuccessView()),
              ),
            ),
          ),
          SizedBox(
            height: 60,
          )
        ],
      ),
    );
  }
}

class AnimationBoxItem extends StatefulWidget {
  final clear;
  final active;
  final value;
  const AnimationBoxItem({
    super.key,
    this.clear = false,
    this.active = false,
    this.value,
  });

  @override
  State<AnimationBoxItem> createState() => _AnimationBoxItemState();
}

class _AnimationBoxItemState extends State<AnimationBoxItem>
    with TickerProviderStateMixin {
  late AnimationController animationController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController = AnimationController(
        vsync: this,
        duration: Duration(
          milliseconds: 600,
        ));
  }

  @override
  Widget build(BuildContext context) {
    if (widget.clear) {
      animationController.forward(from: 0);
    }
    return AnimatedBuilder(
      animation: animationController,
      builder: (context, child) => Container(
        margin: EdgeInsets.all(
          8.0,
        ),
        //color: Colors.red,
        child: Stack(
          children: [
            Container(),
            AnimatedContainer(
              duration: Duration(
                milliseconds: 800,
              ),
              width: 10.0,
              height: 10.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: widget.active ? Colors.white : Colors.white12,
              ),
            ),
            Align(
              alignment:
                  Alignment(0, animationController.value / widget.value - 1),
              child: Opacity(
                opacity: 1 - animationController.value,
                child: Container(
                  width: 10.0,
                  height: 10.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: widget.active ? Colors.white : Colors.white12,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}


// MaterialButton(
//                         onPressed: () {
//                           controller.updateInputText(index);
//                         },
//                         minWidth: 50,
//                         height: 55,
//                         child: Text(
//                           "0",
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 30,
//                             fontWeight: FontWeight.w400,
//                           ),
//                         ),
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(60),
//                         ),
//                       )