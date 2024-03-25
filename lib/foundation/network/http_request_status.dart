import 'network_constants.dart';

sealed class RequestStatus {
  const RequestStatus(this.message);
  final String message;
}

class SuccessfulRequest extends RequestStatus {
  const SuccessfulRequest() : super(NetworkConstants.successfulRequestMessage);
}

class AccessDenied extends RequestStatus {
  const AccessDenied() : super(NetworkConstants.accessDeniedMessage);
}

class UnavailableServer extends RequestStatus {
  const UnavailableServer() : super(NetworkConstants.unavailableServerMessage);
}

class ConnectionNetwork extends RequestStatus {
  const ConnectionNetwork() : super(NetworkConstants.connectionNetworkMessage);
}

class Unknown extends RequestStatus {
  const Unknown(this.errorMessage) : super(errorMessage);
  final String errorMessage;
}

extension on RequestStatus {
  hasErrors() => this is! SuccessfulRequest;
}