import 'dart:async';
import 'dart:convert';

import 'package:clap/app_exports.dart';
import 'package:clap/services/api_status.dart';
import 'package:clap/services/endpoints.dart';
import 'package:http/http.dart' as http;

class NetworkHandler {
  static var client = http.Client();
  static NetworkHandler? _instance;
  NetworkHandler._();

  static NetworkHandler? get instance {
    _instance ??= NetworkHandler._();
    return _instance;
  }

  // POST REQUEST
  Future<dynamic> postData(url, Map<String, dynamic> body, {noToken = false}) async {
    String? token = await storage.read(key: 'token');

    try {
      var callUrl = Uri.parse(url);

      var response = await http.post(
        callUrl,
        body: json.encode(body),
        headers: {
          'Accept': 'application/json',
          'Content-type': 'application/json',
          'Authorization': 'Bearer $token',
          'jwt-auth': 'true',
        },
      ).timeout(const Duration(seconds: 15));

      return _response(response);
    } on SocketException {
      return Failure(code: 900, errorResponse: {'message': 'No Internet Connection'});
    } on HttpException {
      return Failure(code: 900, errorResponse: {'message': 'Server Error'});
    } on TimeoutException {
      return Failure(code: 900, errorResponse: {'message': 'No Internet Connection'});
    } catch (e) {
      clapDebugPrint('catch block - $e');
    }
  }

  // GET REQUEST
  Future<dynamic> getData(url) async {
    String? token = await storage.read(key: 'token');

    try {
      var callUrl = Uri.parse(url);

      var response = await http.get(
        callUrl,
        headers: {
          'Accept': 'application/json',
          'Authorization': 'Bearer $token',
          'jwt-auth': 'true',
        },
      ).timeout(const Duration(seconds: 30));

      return _response(response);
    } on SocketException {
      return Failure(code: 900, errorResponse: {'message': 'No Internet Connection'});
    } on HttpException {
      return Failure(code: 900, errorResponse: {'message': 'Server Error'});
    } on FormatException {
      return Failure(code: 900, errorResponse: {'message': 'Oops, seems we\'ve hit a snag'});
    } on TimeoutException {
      return Failure(code: 900, errorResponse: {'message': 'No Internet Connection'});
    } catch (e) {
      return Failure(code: 900, errorResponse: {'message': 'Oops, seems we\'ve hit a snag'});
    }
  }

  // PUT REQUEST
  Future<dynamic> putData(url, Map<String, dynamic> body, {noToken = false}) async {
    String? token = await storage.read(key: 'token');

    try {
      var callUrl = Uri.parse(url);

      var response = await http.put(
        callUrl,
        body: json.encode(body),
        headers: {
          'Accept': 'application/json',
          'Content-type': 'application/json',
          'Authorization': 'Bearer $token',
          'jwt-auth': 'true',
        },
      ).timeout(const Duration(seconds: 15));

      return _response(response);
    } on SocketException {
      return Failure(code: 900, errorResponse: {'message': 'No Internet Connection'});
    } on HttpException {
      return Failure(code: 900, errorResponse: {'message': 'Server Error'});
    } on TimeoutException {
      return Failure(code: 900, errorResponse: {'message': 'No Internet Connection'});
    } catch (e) {
      clapDebugPrint('catch block - $e');
    }
  }

  // Request on generate rrr screen
  Future<dynamic> payTransaction({required String url, required Map<String, dynamic> body}) async {
    String? token = await storage.read(key: 'token');

    var callUrl = Uri.parse(url);

    var response = await http.post(
      callUrl,
      body: json.encode(body),
      headers: {
        'Accept': 'application/json',
        'Content-type': 'application/json',
        'Authorization': 'Bearer $token',
        'jwt-auth': 'true',
      },
    );

    return response;
  }

  // DELETE REQUEST
  Future<dynamic> deleteData(url) async {
    String? token = await storage.read(key: 'token');

    try {
      var callUrl = Uri.parse(url);

      var response = await http.delete(
        callUrl,
        headers: {
          'Accept': 'application/json',
          'Content-type': 'application/json',
          'Authorization': 'Bearer $token',
          'jwt-auth': 'true',
        },
      ).timeout(const Duration(seconds: 15));

      return _response(response);
    } on SocketException {
      return Failure(code: 900, errorResponse: {'message': 'No Internet Connection'});
    } on HttpException {
      return Failure(code: 900, errorResponse: {'message': 'Server Error'});
    } on TimeoutException {
      return Failure(code: 900, errorResponse: {'message': 'No Internet Connection'});
    } catch (e) {
      clapDebugPrint('catch block - $e');
    }
  }

  // PATCH IMAGE (UPLOAD)
  Future<http.StreamedResponse> patchImage(String url, filePath) async {
    String? token = await storage.read(key: 'token');

    var callUrl = Uri.parse(url);

    var request = http.MultipartRequest('POST', callUrl);
    request.files.add(await http.MultipartFile.fromPath('photo', filePath.path));
    request.fields.addAll({'_method': 'PUT'});

    request.headers.addAll({
      'Accept': 'application/json',
      'Content-type': 'multipart/form-data',
      'Authorization': 'Bearer $token',
      'X-Test': 'Tolu',
    });

    var response = await request.send();
    return response;
  }

  // PROFILE UPDATE REQUEST
  Future<dynamic> putProfileData(url, Map<String, dynamic> body) async {
    String? token = await storage.read(key: 'token');

    try {
      var callUrl = Uri.parse(url);

      var response = await http.put(
        callUrl,
        body: json.encode(body),
        headers: {
          'Accept': 'application/json',
          'Content-type': 'application/json',
          'Authorization': 'Bearer $token',
          'jwt-auth': 'true',
        },
      ).timeout(const Duration(seconds: 15));

      return response;
    } on SocketException {
      return Failure(code: 900, errorResponse: {'message': 'No Internet Connection'});
    } on HttpException {
      return Failure(code: 900, errorResponse: {'message': 'Server Error'});
    } on TimeoutException {
      return Failure(code: 900, errorResponse: {'message': 'No Internet Connection'});
    } catch (e) {
      return Failure(code: 900, errorResponse: {'message': 'Oops, seems we\'ve hit a snag'});
    }
  }
}

dynamic _response(http.Response response) async {
  switch (response.statusCode) {
    case 200:
      return Success(code: 200, data: json.decode(response.body.toString()));
    case 201:
      return Success(code: 201, data: json.decode(response.body.toString()));
    case 400:
      return Failure(code: response.statusCode, errorResponse: json.decode(response.body.toString()));
    case 401:
      Failure(code: response.statusCode, errorResponse: json.decode(response.body.toString()));

      // TODO: LOG OUT APP

      // Navigator.pushNamedAndRemoveUntil(
      //   navigatorKey.currentContext!,
      //   authPath,
      //   (route) => false,
      // );

      break;

    case 403:
      return Failure(code: response.statusCode, errorResponse: json.decode(response.body.toString()));
    case 404:
      return Failure(code: response.statusCode, errorResponse: json.decode(response.body.toString()));
    case 500:
      return Failure(code: response.statusCode, errorResponse: json.decode(response.body.toString()));

    default:
      return Failure(code: response.statusCode, errorResponse: json.decode(response.body.toString()));
  }
}
