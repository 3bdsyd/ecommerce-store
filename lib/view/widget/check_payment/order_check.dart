import 'package:ecommerce_store/core/constants/app_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../core/constants/app_color.dart';
import 'button_state_order.dart';

class OrderCheck extends StatelessWidget {
  const OrderCheck({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          Text(
            'Order Check',
            style: context.textTheme.titleLarge,
          ),
          SizedBox(
            height: 10.h,
          ),
          SizedBox(
            height: 15.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Shipping address',
                            style: context.textTheme.labelSmall!.copyWith(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Text(
                            'Ranim Omar\nDamascus-Alkaza-srt.x\n,28294\n+963 997555668',
                            style: context.textTheme.labelSmall!
                                .copyWith(fontSize: 14),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Text(
                            'Express Delivery',
                            style: context.textTheme.labelSmall!.copyWith(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Text(
                            '1 -2 Hours',
                            style: context.textTheme.labelSmall!.copyWith(
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 30.h,
                      width: 80.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.fromBorderSide(
                          BorderSide(color: AppColor.primaryColor),
                        ),
                      ),
                      child: Text(
                        'Update',
                        style:
                            context.textTheme.bodySmall!.copyWith(fontSize: 14),
                      ),
                    ),
                  ],
                ),
                Divider(
                  color: AppColor.thirdColor,
                  thickness: .5,
                  height: 20.h,
                ),
                Row(
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          AppImage.imageCategoryThree,
                          width: 100,
                          height: 110,
                          fit: BoxFit.fill,
                        )),
                    SizedBox(
                      width: 15.w,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        AppImage.imageCategoryOne,
                        width: 100,
                        height: 110,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),
                Divider(
                  color: AppColor.thirdColor.withOpacity(.2),
                  height: 30.h,
                  thickness: 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Text(
                        'SubTotal ( 2 product)',
                        style: context.textTheme.bodySmall!
                            .copyWith(fontSize: 15, color: AppColor.thirdColor),
                      ),
                    ),
                    const Spacer(),
                    Expanded(
                      child: Text(
                        '\$ 537.08',
                        style: context.textTheme.bodySmall!.copyWith(
                          color: AppColor.thirdColor,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Text(
                        'Delivery fee',
                        style: context.textTheme.bodySmall!
                            .copyWith(fontSize: 15, color: AppColor.thirdColor),
                      ),
                    ),
                    const Spacer(),
                    Expanded(
                      child: Text(
                        '\$ 10.00',
                        style: context.textTheme.bodySmall!.copyWith(
                          color: AppColor.thirdColor,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Text(
                        'Total',
                        style: context.textTheme.bodyMedium!
                            .copyWith(fontSize: 18),
                      ),
                    ),
                    const Spacer(),
                    Expanded(
                      child: Text(
                        '\$ 547.08',
                        overflow: TextOverflow.ellipsis,
                        style: context.textTheme.bodyMedium!
                            .copyWith(fontSize: 18),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ButtonStateOrder(
                cancelOrder: true,
              ),
              ButtonStateOrder(
                cancelOrder: false,
              )
            ],
          ),
        ],
      ),
    );
  }
}
