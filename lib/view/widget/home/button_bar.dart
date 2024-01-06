import 'package:ecommerce_store/controller/home_controller.dart';
import 'package:ecommerce_store/core/constants/app_package.dart';

class ButtonNavBar extends GetView<HomeControllerImp> {
  const ButtonNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        border: Border.all(
          color: AppColor.primaryColor,
          width: 1,
        ),
      ),
      child: Obx(
        () => BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          elevation: 0,
          backgroundColor: Colors.transparent,
          items: <BottomNavigationBarItem>[
            buttonItems(image: AppIcon.imageVectorHome),
            buttonItems(image: AppIcon.imageVectorLove),
            buttonItems(image: AppIcon.imageVectorCart),
            buttonItems(image: AppIcon.imageVectorPerson),
          ],
          currentIndex: controller.currentPage.value < 4
              ? controller.currentPage.value
              : 2,
          onTap: (int index) {
            controller.currentPage.value < 4
                ? controller.changeCurrentPage(index)
                : index != 2
                    ? controller.changeCurrentPage(index)
                    : null;
          },
        ),
      ),
    );
  }

  BottomNavigationBarItem buttonItems({
    required image,
  }) {
    return BottomNavigationBarItem(
      icon: SvgPicture.asset(
        image,
        colorFilter: ColorFilter.mode(
          AppColor.thirdColor,
          BlendMode.srcIn,
        ),
      ),
      activeIcon: SvgPicture.asset(
        image,
        colorFilter: ColorFilter.mode(
          AppColor.primaryColor,
          BlendMode.srcIn,
        ),
      ),
      label: '',
    );
  }
}
