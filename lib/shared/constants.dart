import 'package:assesment/shared/utility/app_assets.dart';
import 'package:flutter/material.dart';


class DeviceModel{
  final String title;
  final String price;
  final String formerPrice;
  final String image;
  final String icon;
  DeviceModel({required this.title, required this.price,
    required this.formerPrice, required this.image, required this.icon});
}

List<DeviceModel> deviceList = [
  DeviceModel(title: "Nokia G20", price: "39,780", formerPrice: "88,000", image: AppAssets.phone1, icon: AppAssets.payFourty),
  DeviceModel(title: "iPhone XS Max 4GB", price: "295,999", formerPrice: "315,000", image: AppAssets.phone2, icon: AppAssets.bassey),
  DeviceModel(title: "Anker Soundcore 2", price: "39,780", formerPrice: "88,000", image: AppAssets.phone3, icon: AppAssets.okay),
  DeviceModel(title: "iPhone 12 Pro", price: "490,500", formerPrice: "515,000", image: AppAssets.phone4, icon: AppAssets.imate),
  DeviceModel(title: "Anker Soundcore", price: "49,780", formerPrice: "88,000", image: AppAssets.phone3, icon: AppAssets.imate),
  DeviceModel(title: "iPhone XS Max 128GB", price: "495,999", formerPrice: "515,000", image: AppAssets.phone2, icon: AppAssets.bassey),
];
class MerchantModel{
  final String title;
  final String icon;
  final bool isActive;
  MerchantModel({required this.title, required this.icon, required this.isActive});
}

List<MerchantModel> merchantList = [
  MerchantModel(title: "Justrite", icon: AppAssets.m1, isActive: true),
  MerchantModel(title: "Orile Restaurant", icon: AppAssets.m2, isActive: true),
  MerchantModel(title: "Slot", icon: AppAssets.m3, isActive: true),
  MerchantModel(title: "Pointek", icon: AppAssets.m4, isActive: true),
  MerchantModel(title: "ogabassey", icon: AppAssets.m5, isActive: true),
  MerchantModel(title: "Casper Stores", icon: AppAssets.m6, isActive: false),
  MerchantModel(title: "Dreamworks", icon: AppAssets.m7, isActive: false),
  MerchantModel(title: "Hubmart", icon: AppAssets.m8, isActive: true),
  MerchantModel(title: "Just Used", icon: AppAssets.m9, isActive: true),
  MerchantModel(title: "Just fones", icon: AppAssets.m10, isActive: true),


];
