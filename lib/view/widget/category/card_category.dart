import 'package:ecommerce_store/controller/home_controller.dart';
import 'package:ecommerce_store/core/constants/app_package.dart';
import 'details_category.dart';

class CardCategory extends GetView<HomeControllerImp> {
  const CardCategory(
      {super.key, required this.isPageFavorite, required this.index});
  final bool isPageFavorite;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColor.whiteColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: Image.asset(
              isPageFavorite
                  ? controller.myCategoriesFavorite[index].imageCategory
                  : controller.myCategoryList[index].imageCategory,
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                DetailsCategory(
                  index: index,
                  isPageFavorite: isPageFavorite,
                ),
                SizedBox(
                  height: 5.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        '\$${isPageFavorite ? controller.myCategoriesFavorite[index].priceCategory : controller.myCategoryList[index].priceCategory}',
                        style: context.textTheme.labelSmall!.copyWith(
                          color: AppColor.secondaryColor,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    SvgPicture.asset(
                      AppIcon.onBoardingStart,
                      width: 15.w,
                      height: 15.h,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
