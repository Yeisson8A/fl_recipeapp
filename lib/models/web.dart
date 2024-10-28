import 'dart:convert';

import 'models.dart';

class Web {
    bool noindex;
    String canonicalTerm;
    MetaTags metaTags;
    List<LinkTag> linkTags;
    String imageUrl;

    Web({
        required this.noindex,
        required this.canonicalTerm,
        required this.metaTags,
        required this.linkTags,
        required this.imageUrl,
    });

    factory Web.fromRawJson(String str) => Web.fromJson(json.decode(str));

    factory Web.fromJson(Map<String, dynamic> json) => Web(
        noindex: json["noindex"],
        canonicalTerm: json["canonical-term"],
        metaTags: MetaTags.fromJson(json["meta-tags"]),
        linkTags: List<LinkTag>.from(json["link-tags"].map((x) => LinkTag.fromJson(x))),
        imageUrl: json["image-url"],
    );
}
