import 'package:ecommerce_store/controller/home_controller.dart';
import 'package:ecommerce_store/core/constants/app_package.dart';

// ignore: must_be_immutable
class TitleBack extends GetView<HomeControllerImp> {
  TitleBack({
    super.key,
    required this.title,
    this.aboutScreen,
    this.chatScreen,
  });
  final String title;
  late bool? aboutScreen;
  late bool? chatScreen;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              chatScreen ?? false
                  ? Get.back()
                  : controller.changeCurrentPageInformation(0);
            },
            child: SvgPicture.asset(
              AppIcon.buttonBack,
              height: 25.h,
              width: 25.w,
            ),
          ),
          Text(
            title,
            style: aboutScreen ?? false
                ? context.textTheme.bodySmall!.copyWith(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                  )
                : context.textTheme.bodyMedium!.copyWith(
                    color: AppColor.sixthColor,
                    fontFamily: 'SF Pro Text',
                    fontWeight: FontWeight.w600,
                  ),
          ),
          Container(),
        ],
      ),
    );
  }
}
