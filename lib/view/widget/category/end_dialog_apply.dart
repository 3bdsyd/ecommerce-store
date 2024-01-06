import 'package:ecommerce_store/core/constants/app_package.dart';

class EndDialogApply extends StatelessWidget {
  const EndDialogApply({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.h,
      child: Row(
        children: [
          Expanded(
            flex: 5,
            child: ElevatedButton(
              onPressed: () {},
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
                    'Apply Filter',
                    style: context.textTheme.labelLarge!.copyWith(fontSize: 18),
                  ),
                  SvgPicture.asset(
                    AppIcon.onBoardingStart,
                    width: 30.w,
                    height: 20.h,
                    fit: BoxFit.scaleDown,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 8.w,
          ),
          Expanded(
            flex: 2,
            child: SizedBox(
              height: 40.h,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColor.secondaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Text(
                  'Reset',
                  style: context.textTheme.labelLarge!.copyWith(fontSize: 18),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
