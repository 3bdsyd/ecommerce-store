import 'package:ecommerce_store/core/constants/app_package.dart';

class ListTextMoving extends StatelessWidget {
  const ListTextMoving({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              title,
              style: context.textTheme.titleLarge!.copyWith(
                color: AppColor.thirdColor,
                fontWeight: FontWeight.w400,
                fontSize: 16,
              ),
            ),
            const Spacer(),
            SvgPicture.asset(
              AppIcon.imageMovingIn,
              width: 10,
            ),
            SizedBox(
              width: 10.w,
            ),
          ],
        ),
        Divider(
          color: AppColor.thirdColor,
          height: 20.h,
        )
      ],
    );
  }
}
