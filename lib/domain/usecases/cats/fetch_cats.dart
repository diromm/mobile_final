import 'package:mobile_final/domain/entities/cat_entity.dart';

abstract class FetchCats {
  Future<List<CatEntity>> execute();
}