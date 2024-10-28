import 'dart:convert';

class LinkTag {
    String rel;
    String href;
    String? hreflang;

    LinkTag({
        required this.rel,
        required this.href,
        this.hreflang,
    });

    factory LinkTag.fromRawJson(String str) => LinkTag.fromJson(json.decode(str));

    factory LinkTag.fromJson(Map<String, dynamic> json) => LinkTag(
        rel: json["rel"],
        href: json["href"],
        hreflang: json["hreflang"],
    );
}
