import 'dart:convert';

class Firebase {
    bool? noindex;

    Firebase({
        this.noindex,
    });

    factory Firebase.fromRawJson(String str) => Firebase.fromJson(json.decode(str));

    factory Firebase.fromJson(Map<String, dynamic> json) => Firebase(
        noindex: json["noindex"],
    );
}
