import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:mrchord_app/foundation/api/http_client.dart';
import 'package:mrchord_app/foundation/network/request_response_status.dart';

class HomeRemoteDataSource implements HttpClient {
  @override
  RequestResponseStatus createRequestStatus(http.Response response) {
    switch (response.statusCode) {
      case 200:
        return const SuccessfulRequest();
      case 403:
        return const AccessDenied();
      case >= 500 && <= 599:
        return const UnavailableServer();
      default:
        return Unknown(response.body);
    }
  }

  @override
  RequestResponseStatus createRequestStatusException(Exception exception) {
    switch (exception) {
      case SocketException():
        return const ConnectionNetwork();
      default:
        return Unknown(exception.toString());
    }
  }
}
