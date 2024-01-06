import 'package:ecommerce_store/core/constants/app_package.dart';

class ButtonReturnBack extends StatelessWidget {
  const ButtonReturnBack({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32.h,
      padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: AppColor.secondaryColor,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                AppIcon.imagesReturnIcon,
              ),
            ],
          ),
          SizedBox(
            width: 2.w,
          ),
          Text(
            'Return back',
            style: context.textTheme.labelSmall!.copyWith(
              color: AppColor.whiteColor,
            ),
          ),
        ],
      ),
    );
  }
}
