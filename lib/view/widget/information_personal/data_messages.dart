import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:get/get.dart';

import '../../../core/constant/color_const.dart';
import '../../../data/datasource/static/static.dart';
import 'button_return_back_chat.dart';
import 'messages_admin.dart';
import 'messages_client.dart';

class DataMessages extends StatelessWidget {
  const DataMessages({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          AnimationLimiter(
            child: ListView.builder(
              physics: const BouncingScrollPhysics(
                parent: AlwaysScrollableScrollPhysics(),
              ),
              itemCount: chatList.length,
              itemBuilder: ((BuildContext context, int index) {
                return AnimationConfiguration.staggeredList(
                  position: index,
                  delay: const Duration(milliseconds: 200),
                  child: SlideAnimation(
                    duration: const Duration(milliseconds: 5000),
                    curve: Curves.fastLinearToSlowEaseIn,
                    child: FadeInAnimation(
                      duration: const Duration(milliseconds: 5000),
                      curve: Curves.fastLinearToSlowEaseIn,
                      child: Column(
                        children: [
                          index == 0
                              ? Text(
                                  'Yesterday 9:41',
                                  style:
                                      context.textTheme.labelMedium!.copyWith(
                                    color:
                                        ColorConst.thirdColor.withOpacity(.6),
                                  ),
                                )
                              : Container(
                                  height: 8.h,
                                ),
                          chatList[index].idSender == 1
                              ? MessagesAdmin(
                                  index: index,
                                )
                              : MessagesClient(
                                  index: index,
                                )
                        ],
                      ),
                    ),
                  ),
                );
              }),
            ),
          ),
          const ButtonReturnBackChat(),
        ],
      ),
    );
  }
}
