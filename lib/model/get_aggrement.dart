// To parse this JSON data, do
//
//     final getAgreementModel = getAgreementModelFromJson(jsonString);

import 'dart:convert';

List<GetAgreementModel> getAgreementModelFromJson(String str) =>
    List<GetAgreementModel>.from(
        json.decode(str).map((x) => GetAgreementModel.fromJson(x)));

String getAgreementModelToJson(List<GetAgreementModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class GetAgreementModel {
  GetAgreementModel({
    required this.id,
    required this.categoryId,
    required this.title,
    required this.subTitle,
    required this.qar,
    required this.v,
  });

  String id;
  CategoryId categoryId;
  String title;
  String subTitle;
  String qar;
  int v;

  factory GetAgreementModel.fromJson(Map<String, dynamic> json) =>
      GetAgreementModel(
        id: json["_id"],
        categoryId: CategoryId.fromJson(json["category_id"]),
        title: json["title"],
        subTitle: json["subTitle"],
        qar: json["qar"],
        v: json["__v"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "category_id": categoryId.toJson(),
        "title": title,
        "subTitle": subTitle,
        "qar": qar,
        "__v": v,
      };
}

class CategoryId {
  CategoryId({
    required this.id,
    required this.title,
  });

  String id;
  String title;

  factory CategoryId.fromJson(Map<String, dynamic> json) => CategoryId(
        id: json["_id"],
        title: json["title"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "title": title,
      };
}
