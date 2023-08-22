// To parse this JSON data, do
//
//     final assestsplatform = assestsplatformFromJson(jsonString);

import 'dart:convert';

List<Assestsplatform> assestsplatformFromJson(String str) =>
    List<Assestsplatform>.from(
        json.decode(str).map((x) => Assestsplatform.fromJson(x)));

String assestsplatformToJson(List<Assestsplatform> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Assestsplatform {
  String id;
  int? chainIdentifier;
  String name;
  String shortname;

  Assestsplatform({
    required this.id,
    this.chainIdentifier,
    required this.name,
    required this.shortname,
  });

  factory Assestsplatform.fromJson(Map<String, dynamic> json) =>
      Assestsplatform(
        id: json["id"],
        chainIdentifier: json["chain_identifier"],
        name: json["name"],
        shortname: json["shortname"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "chain_identifier": chainIdentifier,
        "name": name,
        "shortname": shortname,
      };
}
