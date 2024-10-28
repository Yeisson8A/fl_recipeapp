import 'dart:convert';

class Attribution {
    String html;
    String url;
    String text;
    String logo;

    Attribution({
        required this.html,
        required this.url,
        required this.text,
        required this.logo,
    });

    factory Attribution.fromRawJson(String str) => Attribution.fromJson(json.decode(str));

    factory Attribution.fromJson(Map<String, dynamic> json) => Attribution(
        html: json["html"],
        url: json["url"],
        text: json["text"],
        logo: json["logo"],
    );
}