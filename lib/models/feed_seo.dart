import 'dart:convert';

import 'models.dart';

class FeedSeo {
    Web web;
    SpotlightSearch spotlightSearch;
    Firebase firebase;

    FeedSeo({
        required this.web,
        required this.spotlightSearch,
        required this.firebase,
    });

    factory FeedSeo.fromRawJson(String str) => FeedSeo.fromJson(json.decode(str));

    factory FeedSeo.fromJson(Map<String, dynamic> json) => FeedSeo(
        web: Web.fromJson(json["web"]),
        spotlightSearch: SpotlightSearch.fromJson(json["spotlightSearch"]),
        firebase: Firebase.fromJson(json["firebase"]),
    );
}
