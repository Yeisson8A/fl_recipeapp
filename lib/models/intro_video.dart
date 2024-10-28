import 'dart:convert';

import 'models.dart';

class IntroVideo {
    dynamic id;
    dynamic originalUrl;
    dynamic hlsUrl;
    dynamic dashUrl;
    dynamic hasAudio;
    Snapshot snapshot;

    IntroVideo({
        required this.id,
        required this.originalUrl,
        required this.hlsUrl,
        required this.dashUrl,
        required this.hasAudio,
        required this.snapshot,
    });

    factory IntroVideo.fromRawJson(String str) => IntroVideo.fromJson(json.decode(str));

    factory IntroVideo.fromJson(Map<String, dynamic> json) => IntroVideo(
        id: json["id"],
        originalUrl: json["originalUrl"],
        hlsUrl: json["hlsUrl"],
        dashUrl: json["dashUrl"],
        hasAudio: json["hasAudio"],
        snapshot: Snapshot.fromJson(json["snapshot"]),
    );
}
