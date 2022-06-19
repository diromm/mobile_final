import 'package:mobile_final/main/factories/usecases/cats/remote_fetch_cats_factory.dart';
import 'package:mobile_final/presentation/cats_presenter.dart';

CatsPresenter makeCatsPresenter() => CatsPresenter(
      fetchCats: makeRemoteFetchCats(),
    );
