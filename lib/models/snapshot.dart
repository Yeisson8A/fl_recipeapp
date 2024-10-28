import 'dart:convert';

class Snapshot {
    dynamic original;
    dynamic resizable;

    Snapshot({
        required this.original,
        required this.resizable,
    });

    factory Snapshot.fromRawJson(String str) => Snapshot.fromJson(json.decode(str));

    factory Snapshot.fromJson(Map<String, dynamic> json) => Snapshot(
        original: json["original"],
        resizable: json["resizable"],
    );
}
