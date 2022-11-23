

import 'package:demo/helper/NetworkManager/manager/network_manager.dart';

enum ProjectEnvironment { test, production }

ProjectEnvironment environment = ProjectEnvironment.test;

String serverPath = "public/api/";

String baseURL() {
  switch (environment) {
    case ProjectEnvironment.test:
      return "https://aartas-qaapp-as.azurewebsites.net/aartas_uat/$serverPath";

    case ProjectEnvironment.production:
      return "https://$serverPath";
  }
}

enum ServiceApi {
  doctor,
}

extension ServiceExtension on ServiceApi {
  String get endpoint {
    switch (this) {
      case ServiceApi.doctor:
        return "doctor";
    }
  }
  APIMethod get method {
    switch (this) {
        //return APIMethod.get;
      default:
        return APIMethod.post;
    }
  }
}
