import 'package:ecommerce_store/core/constants/app_package.dart';

class ButtonDone extends StatelessWidget {
  const ButtonDone({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.h,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          Get.offAll(
            () => const Home(),
            // transition: Transition.fadeIn,
            // duration: Duration(milliseconds: 500),
            binding: HomeBinding(),
          );
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColor.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(),
            Text(
              'Done',
              style: context.textTheme.labelLarge,
            ),
            SvgPicture.asset(
              AppIcon.fromFieldImageLogIn,
              width: 28.w,
              fit: BoxFit.scaleDown,
            ),
          ],
        ),
      ),
    );
  }
}
