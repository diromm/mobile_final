import 'package:mobile_final/data/http/http_client.dart';
import 'package:mobile_final/data/http/http_error.dart';
import 'package:mobile_final/data/usecases/cats/models/cat_model.dart';
import 'package:mobile_final/domain/entities/cat_entity.dart';
import 'package:mobile_final/domain/usecases/cats/fetch_cats.dart';
import 'package:mobile_final/domain/utils/domain_error.dart';

class RemoteFetchCats extends FetchCats {
  RemoteFetchCats({
    required this.httpClient,
  });

  final HttpClient httpClient;

  @override
  Future<List<CatEntity>> execute() async {
    try {
      final response =
          await httpClient.get(url: 'http://demo5168609.mockable.io/cats');

      final catsList = response?['results']
          .map<CatEntity>((json) => CatModel.fromJson(json).toEntity())
          .toList();

      return catsList ?? [];
    } on HttpError catch (error) {
      if (error == HttpError.forbidden || error == HttpError.unauthorized) {
        throw DomainError.invalidCredentials;
      } else {
        throw DomainError.unexpected;
      }
    }
  }
}
