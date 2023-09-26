import 'dart:ui';

import 'package:ecommerce_store/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../core/class/platform.dart';
import '../../../core/constant/color_const.dart';
import '../../../core/constant/image_const.dart';
import '../../../data/datasource/static/static.dart';
import '../../screen/chat_store.dart';
import 'exit_confirmation.dart';

class OrientationList extends GetView<HomeControllerImp> {
  const OrientationList({super.key});

  @override
  Widget build(BuildContext context) {
    final double sizeHeight = Platform.getSizeHeight(context);
    return SizedBox(
      height: sizeHeight / 1.5,
      child: ListView.separated(
        itemCount: informationPersonalList.length,
        physics: const BouncingScrollPhysics(
          parent: AlwaysScrollableScrollPhysics(),
        ),
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              ListTile(
                leading: Text(
                  informationPersonalList[index].title,
                  style: context.textTheme.labelMedium!.copyWith(fontSize: 18),
                ),
                trailing: GestureDetector(
                  onTap: () {
                    movingToScreen(index);
                  },
                  child: SvgPicture.asset(
                    ImageConst.imageMovingIn,
                  ),
                ),
              ),
              Divider(
                color: ColorConst.thirdColor.withOpacity(.5),
              )
            ],
          );
        },
        separatorBuilder: (_, int i) {
          return Column(
            children: [
              SizedBox(
                height: 1.h,
              ),
            ],
          );
        },
      ),
    );
  }

  void movingToScreen(int index) {
    if (informationPersonalList[index].index == 5) {
      Get.to(
        () => const ChatStore(),
      );
    } else if (informationPersonalList[index].index ==
        informationPersonalList.length) {
      logOutDialog();
    } else {
      controller.changeCurrentPageInformation(
        informationPersonalList[index].index < 5
            ? informationPersonalList[index].index
            : informationPersonalList[--index].index,
      );
    }
  }

  void logOutDialog() {
    Get.generalDialog(
      pageBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
      ) {
        return Stack(
          alignment: Alignment.center,
          children: [
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
              child: Center(
                child: Card(
                  elevation: 10,
                  color: Colors.white.withOpacity(0.5),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: ColorConst.thirdColor,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: SizedBox(
                  width: 250.w,
                  height: 100.h,
                  child: Scaffold(
                    backgroundColor: Colors.grey[350],
                    body: Column(
                      children: [
                        SizedBox(
                          height: 5.h,
                        ),
                        Text(
                          'Log Out',
                          style: context.textTheme.titleLarge!
                              .copyWith(fontSize: 18),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Text(
                          'Are you sure you want to Log Out',
                          style: context.textTheme.labelMedium,
                        ),
                        SizedBox(
                          height: 12.h,
                        ),
                        const ExitConfirmation(),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
