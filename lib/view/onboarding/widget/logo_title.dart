import 'package:ecommerce_store/core/constant/package_const.dart';

class LogoTitle extends StatelessWidget {
  final int index;
  const LogoTitle({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 80.h,
          width: 80.w,
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
        Text(
          onBoardingList[index].titleText,
          style: context.textTheme.titleSmall!.copyWith(
            color: ColorConst.darkColor,
          ),
        ),
      ],
    );
  }
}
