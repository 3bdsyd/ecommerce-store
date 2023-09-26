import 'package:flutter/material.dart';

class NameCategoryModel {
  final String nameCategory;

  NameCategoryModel({
    required this.nameCategory,
  });
}

class CategoryModel {
  final int id;
  final String imageCategory;
  final String nameCategory;
  final String discretionCategory;
  final String priceCategory;

  CategoryModel({
    required this.id,
    required this.imageCategory,
    required this.nameCategory,
    required this.discretionCategory,
    required this.priceCategory,
  });
}

class InformationPersonalModel {
  final String title;
  final int index;

  InformationPersonalModel({
    required this.index,
    required this.title,
  });
}

class OrderItemsModel {
  final String title;
  final StatelessWidget? toScreen;
  OrderItemsModel({
    required this.title,
    this.toScreen,
  });
}

class ChatModel {
  final int idSender;
  final String message;

  ChatModel({
    required this.idSender,
    required this.message,
  });
}
