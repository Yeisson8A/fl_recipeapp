import 'dart:convert';

class QueryParams {
    int start;
    String? authorId;
    String id;
    String apiFeedType;
    String? relatedContentType;

    QueryParams({
        required this.start,
        this.authorId,
        required this.id,
        required this.apiFeedType,
        this.relatedContentType,
    });

    factory QueryParams.fromRawJson(String str) => QueryParams.fromJson(json.decode(str));

    factory QueryParams.fromJson(Map<String, dynamic> json) => QueryParams(
        start: json["start"],
        authorId: json["authorId"],
        id: json["id"],
        apiFeedType: json["apiFeedType"],
        relatedContentType: json["relatedContentType"],
    );
}