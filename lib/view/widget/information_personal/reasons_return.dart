import 'package:ecommerce_store/core/constants/app_package.dart';

class ReasonsReturn extends StatelessWidget {
  const ReasonsReturn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 220.w,
      height: 30.h,
      padding: EdgeInsets.symmetric(horizontal: 5.w),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: AppColor.primaryColor.withOpacity(.1),
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: AppColor.primaryColor, width: 1),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton(
          dropdownColor: AppColor.secondaryColor,
          style: context.textTheme.labelMedium,
          focusColor: AppColor.thirdColor,
          isExpanded: true,
          isDense: true,
          enableFeedback: true,
          value: '1',
          borderRadius: BorderRadius.circular(10),
          icon: SvgPicture.asset(
            AppIcon.imagesDropdown,
            height: 8,
          ),
          items: const [
            DropdownMenuItem(
              value: '1',
              child: Text(
                'Damaged due to poor packaging',
              ),
            ),
            DropdownMenuItem(
              value: '2',
              child: Text(
                'No longer needed',
              ),
            ),
            DropdownMenuItem(
              value: '3',
              child: Text(
                'Item arrived to late',
              ),
            ),
          ],
          onChanged: (Object? value) {},
        ),
      ),
    );
  }
}
