import 'package:ecommerce_store/core/constant/package_const.dart';

class ButtonStarted extends GetView<OnBoardingControllerImp> {
  const ButtonStarted({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const PageIndex(),
        SizedBox(
          height: 40.h,
          child: ElevatedButton(
            onPressed: () =>
              controller.nextPage(),
            style: ElevatedButton.styleFrom(
              backgroundColor: ColorConst.primaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text(
                  'Get Started',
                  style: TextStyle(
                    fontFamily: 'SF Pro Text',
                    fontSize: 15,
                  ),
                ),
                SvgPicture.asset(
                  IconConst.onBoardingStart,
                  width: 20.w,
                  fit: BoxFit.scaleDown,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
