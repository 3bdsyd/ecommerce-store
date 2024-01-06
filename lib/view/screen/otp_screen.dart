import 'package:ecommerce_store/core/constants/app_package.dart';

class OtpScreen extends GetView<OtpControllerImp> {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.w),
          child: ListView(
            children: [
              SizedBox(
                height: 20.h,
              ),
              Text('OTP Authentication', style: context.textTheme.titleLarge),
              Text(
                'An authentication code has been\nsent to (+963) 99555668',
                style: context.textTheme.bodySmall,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 30.w,
                  vertical: 20.h,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const OTPFormField(),
                    SizedBox(
                      height: 15.h,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Column(
                        children: [
                          Text(
                            'Didn\'t receive the SMS?',
                            style: context.textTheme.bodySmall!.copyWith(
                              fontSize: 13,
                            ),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Obx(
                            () => Text(
                              'Request New Code in '
                              '${controller.countDown.value ~/ 60}:${(controller.countDown.value % 60).toString().padLeft(2, '0')}',
                              style: context.textTheme.labelMedium!.copyWith(
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                              ),
                            ),
                          ),
                          SizedBox(height: 10.h),
                          Obx(
                            () => GestureDetector(
                              onTap: () => controller.changeActive(),
                              child: Text(
                                controller.isActive.value ? 'Recode' : '',
                                style: context.textTheme.labelMedium!.copyWith(
                                  fontWeight: FontWeight.w600,
                                  color: AppColor.primaryColor,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                    const ButtonVerifye(
                      verifye: true,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
