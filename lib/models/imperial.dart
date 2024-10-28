import 'dart:convert';

import 'models.dart';

class Imperial {
    ImperialUnit unit;
    double? quantity;

    Imperial({
        required this.unit,
        required this.quantity,
    });

    factory Imperial.fromRawJson(String str) => Imperial.fromJson(json.decode(str));

    factory Imperial.fromJson(Map<String, dynamic> json) => Imperial(
        unit: ImperialUnit.fromJson(json["unit"]),
        quantity: json["quantity"]?.toDouble(),
    );
}