

// To parse this JSON data, do
//
//     final contactModel = contactModelFromJson(jsonString);

import 'dart:convert';

// ContactModel contactModelFromJson(String str) => ContactModel.fromJson(json.decode(str));
//
// String contactModelToJson(ContactModel data) => json.encode(data.toJson());
//
// class ContactModel {
//   ContactModel({
//     this.componyName,
//     this.email,
//     this.contectInfo,
//     this.address,
//   });
//
//   String? componyName;
//   String? email;
//   String? contectInfo;
//   String? address;
//
//   factory ContactModel.fromJson(Map<String, dynamic> json) => ContactModel(
//     componyName: json["componyName"],
//     email: json["email"],
//     contectInfo: json["contectInfo"],
//     address: json["address"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "componyName": componyName,
//     "email": email,
//     "contectInfo": contectInfo,
//     "address": address,
//   };
// }

// To parse this JSON data, do
//
//     final contactModel = contactModelFromJson(jsonString);

import 'dart:convert';

ContactModel contactModelFromJson(String str) => ContactModel.fromJson(json.decode(str));

String contactModelToJson(ContactModel data) => json.encode(data.toJson());

class ContactModel {
  ContactModel({
    this.id,
    this.componyName,
    this.email,
    this.contectInfo,
    this.address,
    this.v,
  });

  String? id;
  String? componyName;
  String? email;
  String? contectInfo;
  String? address;
  int? v;

  factory ContactModel.fromJson(Map<String, dynamic> json) => ContactModel(
    id: json["_id"],
    componyName: json["componyName"],
    email: json["email"],
    contectInfo: json["contectInfo"],
    address: json["address"],
    v: json["__v"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "componyName": componyName,
    "email": email,
    "contectInfo": contectInfo,
    "address": address,
    "__v": v,
  };
}

