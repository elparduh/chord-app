import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:mrchord_app/feature/home/data/endpoint/home_endpoint.dart';
import 'package:mrchord_app/foundation/api/http_client.dart';
import 'package:mrchord_app/foundation/network/endpoint.dart';
import 'package:mrchord_app/foundation/network/request_response_status.dart';
import '../model/home_api_models.dart';

class HomeRemoteDataSource implements HttpClient {

  Future<HomeApiResponse> getHome() async {
    try {
      final endpoint = HomeEndpoint.getHome();
      final response = await http.get(
          endpoint.getUrlRequest(),
          headers: endpoint.getAllHeaders()
      );

      final httpRequestStatus = createRequestStatus(response);

      if (httpRequestStatus.hasErrors()) {
        throw httpRequestStatus;
      }

      final responseJson = jsonDecode(response.body);
      return HomeApiResponse.fromJson(responseJson);
    } on Exception catch (e) {
      throw createRequestStatusException(e);
    }
  }

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
