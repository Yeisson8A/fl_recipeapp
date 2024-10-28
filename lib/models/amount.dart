import 'dart:convert';

import 'models.dart';

class Amount {
    Imperial metric;
    Imperial imperial;

    Amount({
        required this.metric,
        required this.imperial,
    });

    factory Amount.fromRawJson(String str) => Amount.fromJson(json.decode(str));

    factory Amount.fromJson(Map<String, dynamic> json) => Amount(
        metric: Imperial.fromJson(json["metric"]),
        imperial: Imperial.fromJson(json["imperial"]),
    );
}