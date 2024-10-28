import 'dart:convert';

class Android {
    String videoTypeCode;
    String videoUrl;
    bool hasAudio;

    Android({
        required this.videoTypeCode,
        required this.videoUrl,
        required this.hasAudio,
    });

    factory Android.fromRawJson(String str) => Android.fromJson(json.decode(str));

    factory Android.fromJson(Map<String, dynamic> json) => Android(
        videoTypeCode: json["videoTypeCode"],
        videoUrl: json["videoUrl"],
        hasAudio: json["hasAudio"],
    );
}
