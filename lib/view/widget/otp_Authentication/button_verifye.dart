import 'package:ecommerce_store/core/constants/app_package.dart';

class ButtonVerifye extends StatelessWidget {
  const ButtonVerifye({super.key, required this.verifye});
  final bool verifye;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.h,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          verifye
              ? Get.toNamed(AppNameScreen.informationAuth)
              : Get.toNamed(AppNameScreen.configure);
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColor.primaryColor,
          minimumSize: Size(30.w, 40.h),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(),
            Text(
              'Save',
              style: context.textTheme.labelLarge!.copyWith(
                color: AppColor.whiteColor,
              ),
            ),
            SvgPicture.asset(
              AppIcon.fromFieldImageLogIn,
              width: 25.w,
              fit: BoxFit.scaleDown,
            ),
          ],
        ),
      ),
    );
  }
}
