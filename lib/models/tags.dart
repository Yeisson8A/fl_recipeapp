import 'dart:convert';

import 'models.dart';

class Tags {
    List<Course>? course;
    List<Course>? cuisine;
    List<Course>? difficulty;
    List<Course>? dish;
    List<Course>? nutrition;
    List<Course>? technique;
    List<Course>? equipment;
    List<Course>? holiday;

    Tags({
        this.course,
        this.cuisine,
        this.difficulty,
        this.dish,
        this.nutrition,
        this.technique,
        this.equipment,
        this.holiday,
    });

    factory Tags.fromRawJson(String str) => Tags.fromJson(json.decode(str));

    factory Tags.fromJson(Map<String, dynamic> json) => Tags(
        course: json["course"] == null ? [] : List<Course>.from(json["course"]!.map((x) => Course.fromJson(x))),
        cuisine: json["cuisine"] == null ? [] : List<Course>.from(json["cuisine"]!.map((x) => Course.fromJson(x))),
        difficulty: json["difficulty"] == null ? [] : List<Course>.from(json["difficulty"]!.map((x) => Course.fromJson(x))),
        dish: json["dish"] == null ? [] : List<Course>.from(json["dish"]!.map((x) => Course.fromJson(x))),
        nutrition: json["nutrition"] == null ? [] : List<Course>.from(json["nutrition"]!.map((x) => Course.fromJson(x))),
        technique: json["technique"] == null ? [] : List<Course>.from(json["technique"]!.map((x) => Course.fromJson(x))),
        equipment: json["equipment"] == null ? [] : List<Course>.from(json["equipment"]!.map((x) => Course.fromJson(x))),
        holiday: json["holiday"] == null ? [] : List<Course>.from(json["holiday"]!.map((x) => Course.fromJson(x))),
    );
}
