import 'package:ecommerce_store/core/constant/package_const.dart';

class StyleButtonSignUpWidget extends StatelessWidget {
  const StyleButtonSignUpWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(),
        Text(
          'Sign Up',
          style: context.textTheme.labelLarge!.copyWith(
            color: ColorConst.whiteColor,
          ),
        ),
        SvgPicture.asset(
          IconConst.fromFieldImageSignUp,
          width: 28.w,
          fit: BoxFit.scaleDown,
        ),
      ],
    );
  }
}
