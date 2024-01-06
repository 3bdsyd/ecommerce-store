import 'package:ecommerce_store/core/constants/app_image.dart';
import 'package:ecommerce_store/core/constants/app_package.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.h),
      child: Column(
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 18.h,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SvgPicture.asset(AppIcon.imageRectangleThree),
                        SvgPicture.asset(AppIcon.imageRectangleTow),
                        SvgPicture.asset(AppIcon.imageRectangleOne),
                      ],
                    ),
                  ),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      SvgPicture.asset(AppIcon.imageEllipseOne),
                      SvgPicture.asset(AppIcon.imageEllipseTow),
                      Image.asset(AppImage.imageProfile1),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Text(
                      'Welcome, Ranim',
                      style: context.textTheme.bodyMedium!.copyWith(
                        fontWeight: FontWeight.w400,
                        color: AppColor.sixthColor,
                        fontSize: 18,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
