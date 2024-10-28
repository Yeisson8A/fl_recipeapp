import 'dart:convert';

class SpotlightSearch {
    List<String> keywords;
    bool noindex;

    SpotlightSearch({
        required this.keywords,
        required this.noindex,
    });

    factory SpotlightSearch.fromRawJson(String str) => SpotlightSearch.fromJson(json.decode(str));

    factory SpotlightSearch.fromJson(Map<String, dynamic> json) => SpotlightSearch(
        keywords: List<String>.from(json["keywords"].map((x) => x)),
        noindex: json["noindex"],
    );
}
