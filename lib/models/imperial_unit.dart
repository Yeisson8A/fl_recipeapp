import 'dart:convert';

class ImperialUnit {
    String id;
    String name;
    String abbreviation;
    String plural;
    String pluralAbbreviation;
    String kind;
    bool decimal;

    ImperialUnit({
        required this.id,
        required this.name,
        required this.abbreviation,
        required this.plural,
        required this.pluralAbbreviation,
        required this.kind,
        required this.decimal,
    });

    factory ImperialUnit.fromRawJson(String str) => ImperialUnit.fromJson(json.decode(str));

    factory ImperialUnit.fromJson(Map<String, dynamic> json) => ImperialUnit(
        id: json["id"],
        name: json["name"],
        abbreviation: json["abbreviation"],
        plural: json["plural"],
        pluralAbbreviation: json["pluralAbbreviation"],
        kind: json["kind"],
        decimal: json["decimal"],
    );
}