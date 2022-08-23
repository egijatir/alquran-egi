import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:alquran/main.dart';
import '';

void main() async {
  Uri url = Uri.parse("https://al-quran-pearl.vercel.app/surah/");
  var res = await http.get(url);
  List data = (json.decode(res.body) as Map<String, dynamic>)["data"];
}
