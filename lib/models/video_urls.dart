import 'dart:convert';

class VideoUrls {
    String android;
    String ios;

    VideoUrls({
        required this.android,
        required this.ios,
    });

    factory VideoUrls.fromRawJson(String str) => VideoUrls.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory VideoUrls.fromJson(Map<String, dynamic> json) => VideoUrls(
        android: json["android"],
        ios: json["ios"],
    );

    Map<String, dynamic> toJson() => {
        "android": android,
        "ios": ios,
    };
}