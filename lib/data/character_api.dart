import 'dart:async';
import 'package:http/http.dart' as http;

class CharacterApi {
  static Future getCharacters() {
    return http.get(Uri(scheme: 'https', host: 'breakingbadapi.com', path: '/api/characters/'));
  }
}