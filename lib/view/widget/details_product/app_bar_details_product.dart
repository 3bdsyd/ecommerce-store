import 'package:ecommerce_store/core/constants/app_package.dart';

import '../../../controller/home_controller.dart';

class AppBarDetailsProduct extends GetView<HomeControllerImp> {
  const AppBarDetailsProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              Get.back();
              controller.currentPage(0);
            },
            child: SvgPicture.asset(
              AppIcon.buttonBack,
              height: 25.h,
              width: 25.w,
            ),
          ),
          Text(
            'Product Page',
            style: context.textTheme.bodyMedium!.copyWith(
              color: AppColor.sixthColor,
              fontFamily: 'SF Pro Text',
              fontWeight: FontWeight.w600,
            ),
          ),
          SvgPicture.asset(
            AppIcon.imagesShopDetails,
            height: 20.h,
            width: 20.w,
          )
        ],
      ),
    );
  }
}
