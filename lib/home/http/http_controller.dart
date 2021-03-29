import 'package:dio_aprendendo/repository/i_user_repository.dart';
import 'package:get/get.dart';

class HttpController extends GetxController with StateMixin {
  final IUserRepository _httpRepository;

  HttpController(this._httpRepository);
  @override
  void onInit() {
    super.onInit();
    findUsers();
  }

  Future<void> findUsers() async {
    change([], status: RxStatus.loading());
    try {
      final dados = await _httpRepository.findAllUsers();
      change(dados, status: RxStatus.success());
    } catch (e) {
      change([], status: RxStatus.error('error ao buscar usuarios '));
    }
  }
}
