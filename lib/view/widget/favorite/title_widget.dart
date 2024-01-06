import 'package:ecommerce_store/core/constants/app_package.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({
    super.key,
    required this.favoriteScreen,
  });
  final bool favoriteScreen;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () => Get.back(),
            child: SvgPicture.asset(
              AppIcon.buttonBack,
              height: 25.h,
              width: 25.w,
            ),
          ),
          Text(
            favoriteScreen ? 'My Favorite' : 'My Cart',
            style: context.textTheme.bodyMedium!.copyWith(
              color: AppColor.sixthColor,
              fontFamily: 'SF Pro Text',
              fontWeight: FontWeight.w600,
            ),
          ),
          SvgPicture.asset(
            favoriteScreen ? AppIcon.imageVectorLove : AppIcon.imageVectorCart,
            height: 20.h,
            width: 20.w,
          )
        ],
      ),
    );
  }
}
