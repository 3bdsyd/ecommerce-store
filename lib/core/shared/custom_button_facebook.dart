import 'package:ecommerce_store/core/constant/package_const.dart';

class CustomButtonFacebook extends StatelessWidget {
  const CustomButtonFacebook({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SvgPicture.asset(
          IconConst.fromFieldImageFacebook,
          width: 28.w,
          fit: BoxFit.scaleDown,
        ),
        Text(
          'Connect with Facebook',
          style: context.textTheme.labelLarge!.copyWith(
            color: ColorConst.whiteColor,
          ),
        ),
        Container(),
      ],
    );
  }
}
