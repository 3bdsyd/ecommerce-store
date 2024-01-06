import 'package:ecommerce_store/core/constants/app_package.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 10,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: SizedBox(
          height: 35.h,
          child: TextField(
            style: context.textTheme.labelSmall,
            cursorColor: AppColor.thirdColor,
            decoration: InputDecoration(
              border: InputBorder.none,
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              filled: true,
              fillColor: AppColor.thirdColor.withOpacity(.1),
              contentPadding: EdgeInsets.only(
                top: 6.h,
                bottom: 2.w,
              ),
              hintText: 'Search products ...',
              hintStyle: context.textTheme.labelLarge!.copyWith(
                color: AppColor.thirdColor.withOpacity(.3),
              ),
              prefixIcon: Padding(
                padding: const EdgeInsets.all(12),
                child: SvgPicture.asset(
                  AppIcon.imageMagnifyingglass,
                ),
              ),
              suffixIcon: Padding(
                padding: const EdgeInsets.all(12),
                child: SvgPicture.asset(
                  AppIcon.imageMicrophone,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
