import 'dart:convert';

import 'models.dart';

class VideoDetails {
    List<Android> android;
    List<Android> ios;

    VideoDetails({
        required this.android,
        required this.ios,
    });

    factory VideoDetails.fromRawJson(String str) => VideoDetails.fromJson(json.decode(str));

    factory VideoDetails.fromJson(Map<String, dynamic> json) => VideoDetails(
        android: List<Android>.from(json["android"].map((x) => Android.fromJson(x))),
        ios: List<Android>.from(json["ios"].map((x) => Android.fromJson(x))),
    );
}
