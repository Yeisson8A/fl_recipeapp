import 'dart:convert';

class Yums {
    int count;
    String thisUser;

    Yums({
        required this.count,
        required this.thisUser,
    });

    factory Yums.fromRawJson(String str) => Yums.fromJson(json.decode(str));

    factory Yums.fromJson(Map<String, dynamic> json) => Yums(
        count: json["count"],
        thisUser: json["this-user"],
    );
}
