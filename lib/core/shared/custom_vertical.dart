import 'package:ecommerce_store/core/constant/package_const.dart';

class CustomVertical extends StatelessWidget {
  final double height;
  const CustomVertical({
    super.key,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: height.h);
  }
}
