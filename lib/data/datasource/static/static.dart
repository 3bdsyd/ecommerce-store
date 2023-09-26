import 'package:ecommerce_store/view/screen/return_products.dart';

import '../../../core/constant/image_const.dart';

import '../../model/home_model.dart';
import '../../model/on_boarding_model.dart';

List<OnBoardingModel> onBoardingList = [
  OnBoardingModel(
    logoImage: ImageConst.onBoardingLogo,
    titleText: 'Accessories Store',
    bodyImageOne: ImageConst.onBoardingImageOne,
    bodyImageTow: ImageConst.onBoardingImageTow,
    bodyText: 'The best jewelry in \n The Town Now',
  ),
  OnBoardingModel(
    logoImage: ImageConst.onBoardingLogo,
    titleText: 'Accessories Store',
    bodyImageOne: ImageConst.onBoardingImageOne,
    bodyImageTow: ImageConst.onBoardingImageTow,
    bodyText: 'The best jewelry in \n The Town Now',
  ),
  OnBoardingModel(
    logoImage: ImageConst.onBoardingLogo,
    titleText: 'Accessories Store',
    bodyImageOne: ImageConst.onBoardingImageOne,
    bodyImageTow: ImageConst.onBoardingImageTow,
    bodyText: 'The best jewelry in \n The Town Now',
  ),
];

List<NameCategoryModel> nameCategoryList = [
  NameCategoryModel(nameCategory: 'All'),
  NameCategoryModel(nameCategory: 'Bags'),
  NameCategoryModel(nameCategory: 'Rings'),
  NameCategoryModel(nameCategory: 'necklace'),
  NameCategoryModel(nameCategory: 'earring'),
];

List<CategoryModel> categoryList = [
  CategoryModel(
    id: 1,
    imageCategory: ImageConst.imageCategoryOne,
    nameCategory: 'Rings',
    discretionCategory: 'Cream elegant',
    priceCategory: '10000000.90',
  ),
  CategoryModel(
    id: 2,
    imageCategory: ImageConst.imageCategoryTow,
    nameCategory: 'Bags',
    discretionCategory: 'Antelope',
    priceCategory: '200.00',
  ),
  CategoryModel(
    id: 3,
    imageCategory: ImageConst.imageCategoryThree,
    nameCategory: 'Rings',
    discretionCategory: 'Cream elegant',
    priceCategory: '10.90',
  ),
  CategoryModel(
    id: 4,
    imageCategory: ImageConst.imageCategoryFour,
    nameCategory: 'Rings',
    discretionCategory: 'Antelope',
    priceCategory: '10.00',
  ),
  CategoryModel(
    id: 5,
    imageCategory: ImageConst.imageCategoryFive,
    nameCategory: 'Bags',
    discretionCategory: 'Antelope',
    priceCategory: '200.00',
  ),
  CategoryModel(
    id: 6,
    imageCategory: ImageConst.imageCategorySix,
    nameCategory: 'Rings',
    discretionCategory: 'Cream elegant',
    priceCategory: '10.90',
  ),
];

List<InformationPersonalModel> informationPersonalList = [
  InformationPersonalModel(
    title: 'Orders History',
    index: 1,
  ),
  InformationPersonalModel(
    title: 'My address',
    index: 2,
  ),
  InformationPersonalModel(
    title: 'My wallets',
    index: 3,
  ),
  InformationPersonalModel(
    title: 'Settings',
    index: 4,
  ),
  InformationPersonalModel(
    title: 'Chat With Store',
    index: 5,
  ),
  InformationPersonalModel(
    title: 'About Store',
    index: 6,
  ),
  InformationPersonalModel(
    title: 'Log out',
    index: 7,
  ),
];

List<OrderItemsModel> orderItemsList = [
  OrderItemsModel(title: 'All'),
  OrderItemsModel(title: 'Packed'),
  OrderItemsModel(title: 'Done'),
  OrderItemsModel(title: 'Cancel'),
  OrderItemsModel(title: 'Return', toScreen: const ReturnProducts()),
];

List<ChatModel> chatList = [
  ChatModel(
    idSender: 1,
    message: 'Hello, Thank you for contacting store'
        'Before starting, will store this and personal'
        ' data according to the privacy policy ',
  ),
  ChatModel(
    idSender: 2,
    message: 'please i need to help me',
  ),
  ChatModel(
    idSender: 1,
    message: 'Hello, Thank you for contacting store'
        'Before starting, will store this and personal'
        ' data according to the privacy policy ',
  ),
  ChatModel(
    idSender: 1,
    message: 'Hello, Thank you for contacting store'
        'Before starting, will store this and personal'
        ' data according to the privacy policy ',
  ),
  ChatModel(
    idSender: 2,
    message: 'please i need to help me',
  ),
  ChatModel(
    idSender: 1,
    message: 'Hello, Thank you for contacting store'
        'Before starting, will store this and personal'
        ' data according to the privacy policy ',
  ),
  ChatModel(
    idSender: 2,
    message: 'please i need to help me',
  ),
  ChatModel(
    idSender: 2,
    message: 'Thank you',
  ),
];
