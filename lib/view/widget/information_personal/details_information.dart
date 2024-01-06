import 'package:ecommerce_store/core/constants/app_image.dart';
import 'package:ecommerce_store/core/constants/app_package.dart';

class DetailsInformation extends StatelessWidget {
  const DetailsInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Expanded(
              child: ButtonBack(title: '', subTitle: ''),
            ),
            Expanded(
              child: Column(
                children: [
                  Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      Image.asset(
                        AppImage.imageProfileBig,
                      ),
                      Container(
                        height: 40.h,
                        width: 40.w,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColor.primaryColor,
                        ),
                        child: SvgPicture.asset(
                          AppIcon.imageCamera,
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                ],
              ),
            ),
            const Spacer(),
          ],
        ),
        SizedBox(
          width: 200,
          child: Column(
            children: [
              Text(
                'Ranim Omar',
                style: context.textTheme.titleLarge,
                textAlign: TextAlign.center,
              ),
              Text(
                'ranem.omarr@gmail.com',
                style: context.textTheme.labelMedium!.copyWith(fontSize: 15),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        )
      ],
    );
  }
}
