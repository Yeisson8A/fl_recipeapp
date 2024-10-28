import 'dart:convert';

import 'models.dart';

class RecipeResponseSeo {
    Firebase web;
    Firebase spotlightSearch;
    Firebase firebase;

    RecipeResponseSeo({
        required this.web,
        required this.spotlightSearch,
        required this.firebase,
    });

    factory RecipeResponseSeo.fromRawJson(String str) => RecipeResponseSeo.fromJson(json.decode(str));

    factory RecipeResponseSeo.fromJson(Map<String, dynamic> json) => RecipeResponseSeo(
        web: Firebase.fromJson(json["web"]),
        spotlightSearch: Firebase.fromJson(json["spotlightSearch"]),
        firebase: Firebase.fromJson(json["firebase"]),
    );
}