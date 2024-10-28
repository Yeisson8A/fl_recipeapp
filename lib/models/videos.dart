import 'dart:convert';

import 'models.dart';

class Videos {
    String snapshotUrl;
    VideoUrls videoUrls;
    VideoDetails videoDetails;
    String originalVideoUrl;
    DateTime createTime;

    Videos({
        required this.snapshotUrl,
        required this.videoUrls,
        required this.videoDetails,
        required this.originalVideoUrl,
        required this.createTime,
    });

    factory Videos.fromRawJson(String str) => Videos.fromJson(json.decode(str));

    factory Videos.fromJson(Map<String, dynamic> json) => Videos(
        snapshotUrl: json["snapshotUrl"],
        videoUrls: VideoUrls.fromJson(json["videoUrls"]),
        videoDetails: VideoDetails.fromJson(json["videoDetails"]),
        originalVideoUrl: json["originalVideoUrl"],
        createTime: DateTime.parse(json["createTime"]),
    );
}