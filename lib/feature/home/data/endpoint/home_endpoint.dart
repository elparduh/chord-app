import 'package:mrchord_app/foundation/network/api_config.dart';
import 'package:mrchord_app/foundation/network/endpoint.dart';

extension HomeEndpoint on Endpoint {
  static Endpoint getHome() {
    return Endpoint(path: ApiConfig.getHome);
  }
}
