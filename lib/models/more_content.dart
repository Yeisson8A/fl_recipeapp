import 'dart:convert';

import 'models.dart';

class MoreContent {
    String mobileSectionName;
    QueryParams queryParams;
    List<dynamic> feed;

    MoreContent({
        required this.mobileSectionName,
        required this.queryParams,
        required this.feed,
    });

    factory MoreContent.fromRawJson(String str) => MoreContent.fromJson(json.decode(str));

    factory MoreContent.fromJson(Map<String, dynamic> json) => MoreContent(
        mobileSectionName: json["mobileSectionName"],
        queryParams: QueryParams.fromJson(json["queryParams"]),
        feed: List<dynamic>.from(json["feed"].map((x) => x)),
    );
}