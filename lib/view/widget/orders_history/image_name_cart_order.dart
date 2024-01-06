import 'package:ecommerce_store/core/constants/app_image.dart';
import 'package:ecommerce_store/core/constants/app_package.dart';
import '../../../core/class/platform.dart';

class ImageNameCartOrder extends StatelessWidget {
  const ImageNameCartOrder({super.key});

  @override
  Widget build(BuildContext context) {
    double sizeWidth = Platform.getSizeWidth(context);
    return Expanded(
      flex: 3,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 3,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SvgPicture.asset(
                  AppIcon.imagesHoppingBag,
                  height: 30,
                  width: 20,
                  fit: BoxFit.scaleDown,
                ),
                Column(
                  children: [
                    Text(
                      'Bags',
                      overflow: TextOverflow.ellipsis,
                      style:
                          context.textTheme.titleLarge!.copyWith(fontSize: 20),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      'Antelope',
                      overflow: TextOverflow.ellipsis,
                      style: context.textTheme.bodySmall!.copyWith(
                        color: AppColor.thirdColor,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      '( Item 1 )',
                      overflow: TextOverflow.ellipsis,
                      style: context.textTheme.bodySmall!
                          .copyWith(color: AppColor.thirdColor),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            width: 2.w,
          ),
          sizeWidth < 300
              ? const Text('')
              : ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    AppImage.imageCategorySix,
                    height: double.infinity,
                    width: 100,
                    fit: BoxFit.fitHeight,
                    // fit: BoxFit.fill,
                  ),
                ),
        ],
      ),
    );
  }
}
