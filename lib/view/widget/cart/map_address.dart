import 'package:ecommerce_store/core/constants/app_image.dart';
import 'package:ecommerce_store/core/constants/app_package.dart';
import '../../../controller/home_controller.dart';

class MapAddress extends GetView<HomeControllerImp> {
  const MapAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.w),
      child: ListView(
        children: [
          SizedBox(
            height: 12.h,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: GestureDetector(
              onTap: () {
                controller.changeStateMap(false);
              },
              child: SvgPicture.asset(
                AppIcon.buttonBack,
                width: 25.w,
                height: 25.h,
                fit: BoxFit.scaleDown,
              ),
            ),
          ),
          SizedBox(
            height: 12.h,
          ),
          SizedBox(
            height: 40,
            width: double.infinity,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: TextField(
                style: context.textTheme.labelSmall,
                cursorColor: AppColor.thirdColor,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  filled: true,
                  fillColor: AppColor.thirdColor.withOpacity(.1),
                  contentPadding: const EdgeInsets.only(
                    left: 15,
                    bottom: 5,
                    right: 15,
                    top: 5,
                  ),
                  hintText: 'Enter Your City ...',
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
          Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(
                AppImage.imagesMap,
                fit: BoxFit.cover,
              ),
              Image.asset(AppImage.imagesBullet)
            ],
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              margin: EdgeInsets.only(top: 5.h),
              alignment: Alignment.center,
              height: 30.h,
              width: 80.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.fromBorderSide(
                  BorderSide(color: AppColor.primaryColor),
                ),
              ),
              child: Text(
                'Save',
                style: context.textTheme.bodySmall!.copyWith(fontSize: 14),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
