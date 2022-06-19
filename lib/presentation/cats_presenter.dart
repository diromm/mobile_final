import 'package:mobile_final/domain/entities/cat_entity.dart';
import 'package:mobile_final/domain/usecases/cats/fetch_cats.dart';
import 'package:mobile_final/domain/utils/domain_error.dart';
import 'package:get/get.dart';

class CatsPresenter extends GetxController {
  CatsPresenter({required this.fetchCats});

  final FetchCats fetchCats;

  final CatsList = Rx<List<CatEntity>>([]);
  final errorMessage = RxString('');

  @override
  void onInit() async {
    super.onInit();
    try {
      CatsList.value = await fetchCats.execute();
    } on DomainError catch (error) {
      errorMessage.value = (error == DomainError.invalidCredentials)
          ? 'Credenciais inválidas'
          : 'Erro, tente novamente';
    }
  }
}
