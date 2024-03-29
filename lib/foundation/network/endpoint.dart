import 'api_config.dart';

class Endpoint {
  final String path;
  final Map<String, String> queryParameters;
  final Map<String, String> additionalHeaders;
  final dynamic body;

  Endpoint(
      {required this.path,
      this.queryParameters = const {},
      this.additionalHeaders = const {},
      this.body});
}

extension EndpointExt on Endpoint {
  Uri getUrlRequest() {
    Uri url = Uri.parse(path);
    return url;
  }

  Map<String, String> getAllHeaders() {
    Map<String, String> headers;
    headers = {
      ApiConfig.contentType: ApiConfig.applicationJson,
      ...additionalHeaders,
    };
    return headers;
  }
}
