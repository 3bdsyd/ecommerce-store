import 'package:ecommerce_store/core/constant/color_const.dart';
import 'package:ecommerce_store/view/screen/cart.dart';
import 'package:ecommerce_store/view/screen/favorite.dart';
import 'package:ecommerce_store/view/screen/information_personal.dart';
import 'package:ecommerce_store/view/screen/main_information.dart';
import 'package:ecommerce_store/view/screen/orders_history.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../data/datasource/static/static.dart';
import '../data/model/home_model.dart';
import '../view/screen/about_store.dart';
import '../view/screen/category.dart';
import '../view/screen/my_address.dart';
import '../view/screen/my_wallets.dart';
import '../view/screen/settings_information.dart';
import '../view/widget/cart/check_payment.dart';
import '../view/widget/check_payment/check_address.dart';
import '../view/widget/check_payment/chose_payment.dart';
import '../view/widget/check_payment/order_check.dart';

abstract class HomeController extends GetxController {
  void changeCurrentPage(int index);
  void choseItem(int index);
  void getItems();
  isAddedProduct(int id);
  addItemsToFavorite(int id);
  removeCategory(int id);
  void addItemsToCart(int id);
  void myColor(int index);
  void myGender(int index);
  removeItemsFromCart(int id);
  removeAllItemsFromCart(int id);
  void changeCurrentPageInformation(int index);
  void choseOrderItem(int index);
  void viewDetailsProduct(int id);
  void changeStatePaymentProduct(bool stateCheckPayment);
  void changeStateMap(bool stateCheckMap);
  void nextPagePayment();
  void changePagePayment(int value);
}

class HomeControllerImp extends HomeController {
  RxInt currentPage = 0.obs;
  RxInt currentItem = 0.obs;
  bool isDownload = true;
  RxBool isCheckPayment = false.obs;
  RxBool isCheckMap = false.obs;
  final RxList<StatelessWidget> pagesHomeList = const [
    CategoryHome(),
    Favorite(),
    Cart(),
    InformationPersonal(),
    CheckPayment(),
  ].obs;
  final RxMap<CategoryModel, int> myCategoryCart = <CategoryModel, int>{}.obs;
  final RxList<CategoryModel> myCategoryList = <CategoryModel>[].obs;
  final RxList<CategoryModel> myCategoriesFavorite = <CategoryModel>[].obs;
  final List<String> typeGenderList = [
    "Man",
    'Women',
    'Both',
  ].obs;
  final RxInt currentGender = 0.obs;
  final List<Color> colorsList = [
    ColorConst.primaryColor,
    ColorConst.secondaryColor,
    ColorConst.thirdColor,
    ColorConst.fourthColor,
    ColorConst.fifthColor,
    ColorConst.sixthColor,
  ].obs;
  final RxInt currentColor = 0.obs;

  final RxList<StatelessWidget> pagesInformationList = const [
    MainInformation(),
    OrdersHistory(),
    MyAddress(),
    MyWallets(),
    SettingsInformation(),
    AboutStore(),
  ].obs;
  final RxInt currentPageInformation = 0.obs;
  final RxInt currentOrderItem = 0.obs;
  RxInt currentPagePayment = 0.obs;
  late PageController pageControllerPayment;

  final RxList<StatelessWidget> pageBuilderPayment = const [
    CheckAddress(),
    ChosePayment(),
    OrderCheck(),
  ].obs;

  //----------------------------------------------------------------
  @override
  void onInit() {
    super.onInit();
    getItems();
    pageControllerPayment = PageController();
  }

  //----------------------------------------------------------------
  @override
  void changeCurrentPage(int index) {
    currentPage(index);
    print(index);
  }

  //----------------------------------------------------------------
  @override
  void choseItem(int index) {
    currentItem(index);
  }

  //----------------------------------------------------------------
  @override
  void getItems() {
    isDownload = true;
    try {
      if (categoryList.isNotEmpty) {
        myCategoryList.addAll(categoryList);
      }
    } finally {
      isDownload = false;
    }
  }

  //----------------------------------------------------------------
  @override
  bool isAddedProduct(int id) {
    return myCategoriesFavorite.any((element) => element.id == id);
  }

  //----------------------------------------------------------------
  @override
  void addItemsToFavorite(int id) {
    final CategoryModel currentCategory =
        myCategoryList.firstWhere((element) => element.id == id);
    bool isAdded = isAddedProduct(id);
    if (isAdded) {
      removeCategory(id);
      Get.snackbar('Note', 'The product has been removed');
    } else {
      myCategoriesFavorite.add(currentCategory);
      Get.snackbar('Note', 'Product added to my favorite');
    }
  }

  //----------------------------------------------------------------
  @override
  void removeCategory(int id) {
    myCategoriesFavorite.removeWhere((element) => element.id == id);
  }

  //----------------------------------------------------------------
  @override
  void addItemsToCart(int id) {
    final CategoryModel currentCategory =
        myCategoryList.firstWhere((element) => element.id == id);
    if (myCategoryCart.containsKey(currentCategory)) {
      myCategoryCart.update(currentCategory, (value) => ++value);
    } else {
      myCategoryCart.addAll(
          {myCategoryList.firstWhere((element) => element.id == id): 1});
      Get.snackbar('Note', 'Product added to my cart');
    }
  }

  //----------------------------------------------------------------
  @override
  void removeItemsFromCart(int id) {
    final CategoryModel currentCategory =
        myCategoryList.firstWhere((element) => element.id == id);
    myCategoryCart.update(currentCategory, (value) => --value);
    myCategoryCart
        .removeWhere((key, value) => key == currentCategory && value == 0);
  }

  //----------------------------------------------------------------
  @override
  void removeAllItemsFromCart(int id) {
    final CategoryModel currentCategory =
        myCategoryList.firstWhere((element) => element.id == id);
    myCategoryCart.remove(currentCategory);
  }

  //----------------------------------------------------------------
  @override
  void myColor(int index) {
    currentColor(index);
  }

  //----------------------------------------------------------------
  @override
  void myGender(int index) {
    currentGender(index);
  }

  //----------------------------------------------------------------
  final Rx<RangeValues> currentRangeValues = const RangeValues(400, 1200).obs;
  //----------------------------------------------------------------
  @override
  void changeCurrentPageInformation(int index) {
    currentPageInformation(index);
  }

  //----------------------------------------------------------------
  @override
  void choseOrderItem(int index) {
    currentOrderItem(index);
  }

  //----------------------------------------------------------------
  late CategoryModel myDetailsProduct;
  @override
  void viewDetailsProduct(int id) {
    myDetailsProduct = myCategoryList.firstWhere((element) => element.id == id);
  }

  //----------------------------------------------------------------
  @override
  void changeStatePaymentProduct(bool stateCheckPayment) {
    isCheckPayment(stateCheckPayment);
  }

  //----------------------------------------------------------------
  @override
  void changeStateMap(bool stateCheckMap) {
    isCheckMap(stateCheckMap);
  }

  //----------------------------------------------------------------

  @override
  void nextPagePayment() {
    if (currentPagePayment.value < 3) {
      currentPagePayment(currentPagePayment.value + 1);
      pageControllerPayment.animateToPage(
        currentPagePayment.value,
        duration: const Duration(milliseconds: 800),
        curve: Curves.easeIn,
      );
    }
  }

  //----------------------------------------------------------------
  @override
  void changePagePayment(int value) {
    currentPagePayment(value);
  }
}
