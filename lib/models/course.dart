import 'dart:convert';

class Course {
    String displayName;
    String tagUrl;

    Course({
        required this.displayName,
        required this.tagUrl,
    });

    factory Course.fromRawJson(String str) => Course.fromJson(json.decode(str));

    factory Course.fromJson(Map<String, dynamic> json) => Course(
        displayName: json["display-name"],
        tagUrl: json["tag-url"],
    );
}
