import 'package:ecommerce_store/core/constants/app_image.dart';
import 'package:ecommerce_store/core/constants/app_package.dart';
import '../../../controller/home_controller.dart';
import 'from_field_chose_payment.dart';
import 'list_text_moving.dart';

class ChosePayment extends GetView<HomeControllerImp> {
  const ChosePayment({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Chose Payment',
                style: context.textTheme.titleLarge,
              ),
              Text(
                'Id  100',
                style: context.textTheme.labelLarge!
                    .copyWith(color: AppColor.thirdColor),
              ),
              const SizedBox(
                width: 0,
              ),
            ],
          ),
          SizedBox(
            height: 25.h,
          ),
          const ListTextMoving(title: 'Credit /Debit Card'),
          Container(
            height: 280.h,
            color: const Color(0xffEEEEEE),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 30.h,
                  color: AppColor.thirdColor,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10.w,
                      ),
                      SvgPicture.asset(AppIcon.imagesLook,
                          width: 15.w, fit: BoxFit.scaleDown),
                      SizedBox(
                        width: 10.w,
                      ),
                      Text(
                        'This is a secure 128-bit SSL Encrypted payment. You\'re safe',
                        style: context.textTheme.labelSmall!.copyWith(
                          color: AppColor.whiteColor,
                          fontSize: 9,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Row(
                  children: [
                    Image.asset(
                      AppImage.imagesCardOne,
                    ),
                    SizedBox(
                      width: 4.w,
                    ),
                    Image.asset(
                      AppImage.imagesCardTow,
                    ),
                    SizedBox(
                      width: 12.w,
                    ),
                    Image.asset(
                      AppImage.imagesCardThree,
                    ),
                    SizedBox(
                      width: 12.w,
                    ),
                    Image.asset(
                      AppImage.imagesCardFour,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      const FromFieldChosePayment(
                        hint: 'Card Number',
                        date: false,
                      ),
                      const FromFieldChosePayment(
                        hint: 'Name On Card',
                        date: false,
                      ),
                      Row(
                        children: [
                          const Expanded(
                            child: FromFieldChosePayment(
                              hint: 'Exp MM/YYYY',
                              date: true,
                            ),
                          ),
                          SizedBox(
                            width: 20.w,
                          ),
                          const Expanded(
                            child: FromFieldChosePayment(
                              hint: 'CVV',
                              date: false,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                Text(
                  'You will not be charged until the order process is complete',
                  style: context.textTheme.labelSmall!.copyWith(
                    fontSize: 10,
                  ),
                  textAlign: TextAlign.center,
                ),
                const Spacer(),
                Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: 35.h,
                  color: AppColor.thirdColor,
                  child: GestureDetector(
                    onTap: () {
                      // controller.nextPagePayment();
                    },
                    child: Text(
                      'ORDER CHECK',
                      style: context.textTheme.labelSmall!.copyWith(
                        color: AppColor.whiteColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          const ListTextMoving(title: 'Via Bank transfer'),
          SizedBox(
            height: 15.h,
          ),
          const ListTextMoving(
            title: 'Via Alharam',
          ),
          SizedBox(
            height: 30.h,
          ),
          Text(
            'Please attachment your payment',
            style: context.textTheme.titleLarge!.copyWith(
              color: AppColor.thirdColor,
              fontWeight: FontWeight.w400,
              fontSize: 16,
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Container(
            height: 100.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: AppColor.nineColor,
            ),
            child: Row(
              children: [
                SvgPicture.asset(AppIcon.imagesImageIcon),
                // ignore: prefer_const_constructors
                Spacer(),
                SvgPicture.asset(
                  AppIcon.imagesVoctorChat,
                  width: 25,
                  height: 25,
                ),
                SizedBox(
                  width: 50.w,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
