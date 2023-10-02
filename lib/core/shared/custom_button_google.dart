import 'package:ecommerce_store/core/constant/package_const.dart';

class CustomButtonGoogle extends StatelessWidget {
  const CustomButtonGoogle({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SvgPicture.asset(
          IconConst.googleLogo,
          width: 28.w,
          fit: BoxFit.scaleDown,
        ),
        Text(
          'Connect with Google',
          style: context.textTheme.labelLarge!.copyWith(
            color: ColorConst.darkColor,
          ),
        ),
        Container(),
      ],
    );
  }
}
