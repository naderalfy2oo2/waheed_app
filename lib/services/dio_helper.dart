import 'package:dio/dio.dart';

class DioHelper {
  static const baseURL = "https://wa7eed.growfet.com/";

  static String? token;

  static final Dio dio = Dio(
    BaseOptions(
      baseUrl: baseURL,
      headers: {
        "accept": "application/json",
        "Content-Type": "application/json",
      },
    ),
  );

  static Future<CustomResponse> postData({
    String path = "",
    Map<String, dynamic>? data,
  }) async {
    return await SendData(path: path, data: data);
  }

  static Future<CustomResponse> getData({required String path}) async {
    try {
      print("$token");
      final resp = await dio.get(
        path,
        options: Options(headers: {"Authorization": "Bearer $token"}),
      );

      print("${resp.data}");

      return CustomResponse(isSucess: true, data: resp.data);
    } on DioException catch (ex) {
      return _handleError(ex);
    }
  }

  static Future<CustomResponse> SendData({
    required String path,
    Map<String, dynamic>? data,
    Map<String, dynamic>? query,
  }) async {
    try {
      final resp = await dio.post(
        path,
        data: data,
        queryParameters: query,
        options: Options(
          headers: {"Authorization": token != null ? "Bearer $token" : null},
        ),
      );

      return CustomResponse(isSucess: true, data: resp.data);
    } on DioException catch (ex) {
      return _handleError(ex);
    }
  }

  static Future<CustomResponse> putData({
    required String path,
    Map<String, dynamic>? data,
  }) async {
    try {
      final resp = await dio.put(
        path,
        data: data,
        options: Options(headers: {"Authorization": "Bearer $token"}),
      );

      return CustomResponse(isSucess: true, data: resp.data);
    } on DioException catch (ex) {
      return _handleError(ex);
    }
  }

  static Future<CustomResponse> deleteData({required String path}) async {
    try {
      final resp = await dio.delete(
        path,
        options: Options(headers: {"Authorization": "Bearer $token"}),
      );

      return CustomResponse(isSucess: true, data: resp.data);
    } on DioException catch (ex) {
      return _handleError(ex);
    }
  }

  static CustomResponse _handleError(DioException ex) {
    print("${ex.response?.statusCode}");
    print("${ex.response?.data}");
    print("${ex.type}");

    String errorMessage = "حدث خطأ غير معروف";

    final data = ex.response?.data;

    if (data is Map) {
      if (data["message"] != null) {
        errorMessage = data["message"].toString();
      } else if (data["msg"] != null) {
        errorMessage = data["msg"].toString();
      } else if (data["error"] != null) {
        errorMessage = data["error"].toString();
      } else if (data["errors"] != null) {
        errorMessage = data["errors"].toString();
      }
    } else if (data != null) {
      errorMessage = data.toString();
    }

    return CustomResponse(isSucess: false, msg: errorMessage);
  }
}

class CustomResponse {
  final bool isSucess;
  final String? msg;
  final dynamic data;

  CustomResponse({required this.isSucess, this.msg, this.data});
}
