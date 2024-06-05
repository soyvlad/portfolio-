import 'package:flutter/material.dart';
import 'package:online_shop/lib_assets/colors.dart';
import 'package:online_shop/lib_assets/images.dart';
import 'package:online_shop/lib_assets/text_strings.dart';

class Item {
  final String image, title, description;
  final int price, size, id;
  final Color color;
  Item({
    required this.image,
    required this.title,
    required this.description,
    required this.price,
    required this.size,
    required this.id,
    required this.color,
  });
}

final items = <Item>[
  Item(
      image: AppImages.bag1,
      title: BagTitile.title1,
      description: BagDescription.descript1,
      price: 8000,
      size: 12,
      id: 1,
      color: AppColors.bag1),
  Item(
      image: AppImages.bag2,
      title: BagTitile.title2,
      description: BagDescription.descript2,
      price: 18000,
      size: 10,
      id: 2,
      color: AppColors.bag2),
  Item(
      image: AppImages.bag3,
      title: BagTitile.title3,
      description: BagDescription.descript3,
      price: 8990,
      size: 8,
      id: 3,
      color: AppColors.bag3),
  Item(
      image: AppImages.bag4,
      title: BagTitile.title4,
      description: BagDescription.descript4,
      price: 6000,
      size: 16,
      id: 4,
      color: AppColors.bag4),
  Item(
      image: AppImages.bag5,
      title: BagTitile.title5,
      description: BagDescription.descript5,
      price: 12500,
      size: 8,
      id: 5,
      color: AppColors.bag5),
  Item(
      image: AppImages.bag6,
      title: BagTitile.title6,
      description: BagDescription.descript6,
      price: 7990,
      size: 12,
      id: 6,
      color: AppColors.bag6),
  Item(
      image: AppImages.bag7,
      title: BagTitile.title7,
      description: BagDescription.descript7,
      price: 4400,
      size: 8,
      id: 7,
      color: AppColors.bag7),
  Item(
      image: AppImages.bag8,
      title: BagTitile.title8,
      description: BagDescription.descript8,
      price: 8000,
      size: 12,
      id: 8,
      color: AppColors.bag8),
];
