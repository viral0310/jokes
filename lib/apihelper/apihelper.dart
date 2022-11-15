import 'dart:convert';
import 'package:http/http.dart' as http;

import '../model/model.dart';

class APIHelper {
  APIHelper._();

  static final APIHelper apiHelper = APIHelper._();

  final String uri = "https://api.chucknorris.io/jokes/random";

  Future<Joke?> fetchSingleJokesDate() async {
    http.Response response = await http.get(Uri.parse(uri));

    if (response.statusCode == 200) {
      Map<String, dynamic> decodeData = jsonDecode(response.body);
      Joke joke = Joke.fromJson(json: decodeData);
      return joke;
    }
    return null;
  }
}
