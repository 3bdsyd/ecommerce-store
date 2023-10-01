import 'package:ecommerce_store/core/constant/package_const.dart';

class ButtonAuthGoogle extends StatelessWidget {
  const ButtonAuthGoogle({
    super.key,
    required this.onPressed,
  });
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 40.h,
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: ElevatedButton(
              onPressed: onPressed,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey[300],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset(
                    ImageConst.googleLogo,
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
              ),
            ),
          ),
        ),
        SizedBox(
          height: 15.h,
        ),
      ],
    );
  }
}
