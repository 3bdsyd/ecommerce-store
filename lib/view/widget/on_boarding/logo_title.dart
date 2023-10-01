import 'package:ecommerce_store/core/constant/package_const.dart';

class LogoTitle extends GetView<OnBoardingControllerImp> {
  const LogoTitle({super.key});

  @override
  Widget build(BuildContext context) {
    final int index = controller.currentPage;
    return Column(
      children: [
        Container(
          height: 90.h,
          width: 90.w,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: ColorConst.primaryColor.withOpacity(.2),
                blurRadius: 20,
                spreadRadius: -20,
              ),
            ],
          ),
          child: Image.asset(
            onBoardingList[index].logoImage,
          ),
        ),
        SizedBox(
          height: 5.h,
        ),
        Text(
          onBoardingList[index].titleText,
          style: context.textTheme.titleSmall!
              .copyWith(color: ColorConst.darkColor),
        ),
        SizedBox(
          height: 10.h,
        ),
      ],
    );
  }
}
