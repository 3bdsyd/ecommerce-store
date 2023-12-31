import 'package:ecommerce_store/controller/home_controller.dart';
import 'package:ecommerce_store/core/constants/app_package.dart';

class TopSectionDetailsProduct extends GetView<HomeControllerImp> {
  const TopSectionDetailsProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 320.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Spacer(),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SvgPicture.asset(AppIcon.imagesShareIcon),
              SizedBox(
                height: 120.h,
              ),
              ...List.generate(
                5,
                (index) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 2),
                  child: AnimatedContainer(
                    width: 7.w,
                    height: 7.w,
                    decoration: BoxDecoration(
                        color: index == 4
                            ? AppColor.secondaryColor
                            : AppColor.thirdColor,
                        shape: BoxShape.circle),
                    duration: const Duration(
                      milliseconds: 500,
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            width: 2.w,
          ),
          Expanded(
            flex: 3,
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(50),
                    bottomLeft: Radius.circular(50),
                  ),
                  child: Image.asset(
                    controller.myDetailsProduct.imageCategory,
                    fit: BoxFit.fill,
                    width: double.infinity,
                    height: 300.h,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 30.h,
                    width: 100.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColor.thirdColor.withOpacity(.95),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Text(
                            '-',
                            style: context.textTheme.labelLarge!.copyWith(
                              fontSize: 18,
                            ),
                          ),
                        ),
                        Text(
                          '1',
                          style: context.textTheme.labelLarge!.copyWith(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '+',
                          style: context.textTheme.labelLarge!.copyWith(
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
