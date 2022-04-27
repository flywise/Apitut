// To parse this JSON data, do
//
//     final purchaseAgreementModel = purchaseAgreementModelFromJson(jsonString);

import 'dart:convert';

import 'package:flutter/src/painting/box_decoration.dart';

List<PurchaseAgreementModel> purchaseAgreementModelFromJson(String str) => List<PurchaseAgreementModel>.from(json.decode(str).map((x) => PurchaseAgreementModel.fromJson(x)));

String purchaseAgreementModelToJson(List<PurchaseAgreementModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class PurchaseAgreementModel {
    PurchaseAgreementModel({
      required  this.subCategoryImg,
      required  this.id,
      required  this.categoryId,
       required this.subCategory,
      required  this.v,
    });

    SubCategoryImg subCategoryImg;
    String id;
    String categoryId;
    String subCategory;
    int v;

    factory PurchaseAgreementModel.fromJson(Map<String, dynamic> json) => PurchaseAgreementModel(
        subCategoryImg: SubCategoryImg.fromJson(json["subCategoryImg"]),
        id: json["_id"],
        categoryId: json["categoryId"],
        subCategory: json["subCategory"],
        v: json["__v"],
    );

    Map<String, dynamic> toJson() => {
        "subCategoryImg": subCategoryImg.toJson(),
        "_id": id,
        "categoryId": categoryId,
        "subCategory": subCategory,
        "__v": v,
    };

  obx(BoxDecoration Function(dynamic state) param0) {}
}

class SubCategoryImg {
    SubCategoryImg({
      required  this.filename,
      required  this.filetype,
      required  this.filesize,
      required  this.url,
    });

    String filename;
    String filetype;
    String filesize;
    String url;

    factory SubCategoryImg.fromJson(Map<String, dynamic> json) => SubCategoryImg(
        filename: json["filename"],
        filetype: json["filetype"],
        filesize: json["filesize"],
        url: json["url"],
    );

    Map<String, dynamic> toJson() => {
        "filename": filename,
        "filetype": filetype,
        "filesize": filesize,
        "url": url,
    };
}
