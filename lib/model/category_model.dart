// To parse this JSON data, do
//
//     final categoryModel = categoryModelFromJson(jsonString);

import 'dart:convert';

List<CategoryModel> categoryModelFromJson(String str) => List<CategoryModel>.from(json.decode(str).map((x) => CategoryModel.fromJson(x)));

String categoryModelToJson(List<CategoryModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CategoryModel {
  CategoryModel({
    this.img,
    this.id,
    this.title,
    this.descrption,
    this.v,
  });

  Img? img;
  String? id;
  String? title;
  String? descrption;
  int? v;

  factory CategoryModel.fromJson(Map<String, dynamic> json) => CategoryModel(
    img: Img.fromJson(json["img"]),
    id: json["_id"],
    title: json["title"],
    descrption: json["descrption"],
    v: json["__v"],
  );

  Map<String, dynamic> toJson() => {
    "img": img!.toJson(),
    "_id": id,
    "title": title,
    "descrption": descrption,
    "__v": v,
  };
}

class Img {
  Img({
    this.filename,
    this.filetype,
    this.filesize,
    this.url,
  });

  String? filename;
  String? filetype;
  String? filesize;
  String? url;

  factory Img.fromJson(Map<String, dynamic> json) => Img(
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
