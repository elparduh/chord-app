import 'network_constants.dart';

sealed class HttpRequestStatus {
  const HttpRequestStatus(this.message);
  final String message;
}

class SuccessfulRequest extends HttpRequestStatus {
  const SuccessfulRequest() : super(NetworkConstants.successfulRequestMessage);
}

class AccessDenied extends HttpRequestStatus {
  const AccessDenied() : super(NetworkConstants.accessDeniedMessage);
}

class UnavailableServer extends HttpRequestStatus {
  const UnavailableServer() : super(NetworkConstants.unavailableServerMessage);
}

class ConnectionNetwork extends HttpRequestStatus {
  const ConnectionNetwork() : super(NetworkConstants.connectionNetworkMessage);
}

class Unknown extends HttpRequestStatus {
  const Unknown(this.errorMessage) : super(errorMessage);
  final String errorMessage;
}

extension on HttpRequestStatus {
  hasErrors() => this is! SuccessfulRequest;
}