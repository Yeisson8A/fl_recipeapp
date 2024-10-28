import 'dart:convert';

class MetaTags {
    String title;
    String description;

    MetaTags({
        required this.title,
        required this.description,
    });

    factory MetaTags.fromRawJson(String str) => MetaTags.fromJson(json.decode(str));

    factory MetaTags.fromJson(Map<String, dynamic> json) => MetaTags(
        title: json["title"],
        description: json["description"],
    );
}
