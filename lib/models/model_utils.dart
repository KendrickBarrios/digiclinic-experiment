List<DateTime> datesFromJson(List<dynamic> json) =>
  json.map((e) => DateTime.parse(e as String)).toList();

List<String> datesToJson(List<DateTime> dates) =>
  dates.map((e) => e.toIso8601String()).toList();

String? nullableStringFromJson(dynamic value) {
  if (value == null) return null;
  return value as String;
}

List<String>? stringListFromJson(dynamic json) {
  if (json == null) return null;

  if (json is List) {
    return json
      .where((e) => e != null)
      .map((e) => e.toString())
      .toList();
  }

  return null;
}

List<String>? stringListToJson(List<String>? list) {
  return list;
}