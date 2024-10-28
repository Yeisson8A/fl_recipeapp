import 'dart:convert';

class Image {
    String hostedLargeUrl;
    String resizableImageUrl;
    int resizableImageHeight;
    int resizableImageWidth;

    Image({
        required this.hostedLargeUrl,
        required this.resizableImageUrl,
        required this.resizableImageHeight,
        required this.resizableImageWidth,
    });

    factory Image.fromRawJson(String str) => Image.fromJson(json.decode(str));

    factory Image.fromJson(Map<String, dynamic> json) => Image(
        hostedLargeUrl: json["hostedLargeUrl"],
        resizableImageUrl: json["resizableImageUrl"],
        resizableImageHeight: json["resizableImageHeight"],
        resizableImageWidth: json["resizableImageWidth"],
    );
}