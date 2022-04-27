import "package:dio/dio.dart";

class Client{
  Dio init() {
    Dio _dio = new Dio();
    _dio.interceptors.add(new ApiInterceptors());
    _dio.options.baseUrl = "https://nintytwo-9092.herokuapp.com";
    return _dio;
  }
}


class ApiInterceptors extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {

    return super.onRequest(options, handler);
  }
  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    
    return super.onResponse(response, handler);
  }
  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {

    return super.onError(err, handler);
  }

}