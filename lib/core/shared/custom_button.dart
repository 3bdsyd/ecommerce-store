import 'package:ecommerce_store/core/constants/app_package.dart';

class CustomButton extends StatelessWidget {
  final Function() onPressed;
  final Widget widget;
  final Color backgroundColor;
  
  const CustomButton({
    super.key,
    required this.onPressed,
    required this.widget,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.h,
      width: 300.w,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: widget,
      ),
    );
  }
}
