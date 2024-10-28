import 'dart:convert';

class Profile {
    String profileName;
    String displayName;
    String siteUrl;
    String pictureUrl;
    String pageUrl;
    String? description;
    String type;
    String profileUrl;

    Profile({
        required this.profileName,
        required this.displayName,
        required this.siteUrl,
        required this.pictureUrl,
        required this.pageUrl,
        required this.description,
        required this.type,
        required this.profileUrl,
    });

    factory Profile.fromRawJson(String str) => Profile.fromJson(json.decode(str));

    factory Profile.fromJson(Map<String, dynamic> json) => Profile(
        profileName: json["profileName"],
        displayName: json["displayName"],
        siteUrl: json["siteUrl"],
        pictureUrl: json["pictureUrl"],
        pageUrl: json["pageUrl"],
        description: json["description"],
        type: json["type"],
        profileUrl: json["profileUrl"],
    );
}
