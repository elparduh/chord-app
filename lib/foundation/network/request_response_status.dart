import 'network_constants.dart';

sealed class RequestResponseStatus {
  const RequestResponseStatus(this.message);
  final String message;
}

class SuccessfulRequest extends RequestResponseStatus {
  const SuccessfulRequest() : super(NetworkConstants.successfulRequestMessage);
}

class AccessDenied extends RequestResponseStatus {
  const AccessDenied() : super(NetworkConstants.accessDeniedMessage);
}

class UnavailableServer extends RequestResponseStatus {
  const UnavailableServer() : super(NetworkConstants.unavailableServerMessage);
}

class ConnectionNetwork extends RequestResponseStatus {
  const ConnectionNetwork() : super(NetworkConstants.connectionNetworkMessage);
}

class Unknown extends RequestResponseStatus {
  const Unknown(this.errorMessage) : super(errorMessage);
  final String errorMessage;
}

extension on RequestResponseStatus {
  hasErrors() => this is! SuccessfulRequest;
}