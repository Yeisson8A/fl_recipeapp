import 'dart:convert';

import 'models.dart';

class TagsAds {
    List<Course>? adtag;

    TagsAds({
        this.adtag,
    });

    factory TagsAds.fromRawJson(String str) => TagsAds.fromJson(json.decode(str));

    factory TagsAds.fromJson(Map<String, dynamic> json) => TagsAds(
        adtag: json["adtag"] == null ? [] : List<Course>.from(json["adtag"]!.map((x) => Course.fromJson(x))),
    );
}
