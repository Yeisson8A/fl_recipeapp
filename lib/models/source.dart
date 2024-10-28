import 'dart:convert';

import 'models.dart';

class Source {
    String sourceRecipeUrl;
    String? sourceFaviconUrl;
    bool sourceHttpsOk;
    bool sourceInFrame;
    String sourceDisplayName;
    dynamic proSource;
    String sourceSiteUrl;
    IntroVideo introVideo;
    dynamic eyebrowText;
    String sourcePageUrl;
    dynamic marketingCopy;
    bool sourceHttpOk;
    dynamic marketingImage;

    Source({
        required this.sourceRecipeUrl,
        required this.sourceFaviconUrl,
        required this.sourceHttpsOk,
        required this.sourceInFrame,
        required this.sourceDisplayName,
        required this.proSource,
        required this.sourceSiteUrl,
        required this.introVideo,
        required this.eyebrowText,
        required this.sourcePageUrl,
        required this.marketingCopy,
        required this.sourceHttpOk,
        required this.marketingImage,
    });

    factory Source.fromRawJson(String str) => Source.fromJson(json.decode(str));

    factory Source.fromJson(Map<String, dynamic> json) => Source(
        sourceRecipeUrl: json["sourceRecipeUrl"],
        sourceFaviconUrl: json["sourceFaviconUrl"],
        sourceHttpsOk: json["sourceHttpsOk"],
        sourceInFrame: json["sourceInFrame"],
        sourceDisplayName: json["sourceDisplayName"],
        proSource: json["proSource"],
        sourceSiteUrl: json["sourceSiteUrl"],
        introVideo: IntroVideo.fromJson(json["introVideo"]),
        eyebrowText: json["eyebrowText"],
        sourcePageUrl: json["sourcePageUrl"],
        marketingCopy: json["marketingCopy"],
        sourceHttpOk: json["sourceHttpOk"],
        marketingImage: json["marketingImage"],
    );
}
