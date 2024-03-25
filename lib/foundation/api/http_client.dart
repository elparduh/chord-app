import 'package:mrchord_app/foundation/network/request_response_status.dart';
import 'package:http/http.dart' as http;

abstract class HttpClient {
  RequestResponseStatus createRequestStatus(http.Response response);
  RequestResponseStatus createRequestStatusException(Exception exception);
}