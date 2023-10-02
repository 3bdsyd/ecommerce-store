import 'package:ecommerce_store/core/constant/package_const.dart';

class CustomHorizontal extends StatelessWidget {
  final double width;
  const CustomHorizontal({
    super.key,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: width.w);
  }
}
