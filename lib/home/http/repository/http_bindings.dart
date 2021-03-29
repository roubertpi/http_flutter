import 'package:dio_aprendendo/repository/i_user_repository.dart';
import 'package:get/get.dart';

import '../http_controller.dart';
import 'user_http_repository.dart';

class HttpBindings implements Bindings {
  @override
  void dependencies() {
    Get.put<IUserRepository>(UserHttpRepository());
    Get.put(HttpController(Get.find()));
  }
}
