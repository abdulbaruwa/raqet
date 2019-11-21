import 'dart:async';
import 'dart:convert';
import 'dart:core';
import 'package:http/http.dart' as httpdart;

class WebClient {
  const WebClient();

  Future<dynamic> get(String url, String token) async {
    final httpdart.Response response = await httpdart.Client().get(
      url,
      headers: {
        'zumo-api-version': '2.0.0',
      },
    );

    if (response.statusCode >= 400) {
      print('==== FAILED ====');
      print('body: ${response.body}');

      throw _parseError(response.statusCode, response.body);
    }

    final dynamic jsonResponse = json.decode(response.body);

    //print(jsonResponse);

    return jsonResponse;
  }

  String _parseError(int code, String response) {
    dynamic message = response;

    if (response.contains('DOCTYPE html')) {
      return '$code: An error occurred';
    }

    try {
      final dynamic jsonResponse = json.decode(response);
      message = jsonResponse['error'] ?? jsonResponse;
      message = message['message'] ?? message;
      try {
        jsonResponse['errors'].forEach((String field, List<String> errors) =>
            errors.forEach((error) => message += '\n$field: $error'));
      } catch (error) {
        // do nothing
      }
    } catch (error) {
      // do nothing
    }

    return '$code: $message';
  }
}
