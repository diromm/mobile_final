import 'package:mobile_final/data/usecases/cats/remote_fetch_cats.dart';
import 'package:mobile_final/domain/usecases/cats/fetch_cats.dart';
import 'package:mobile_final/main/factories/infra/http_adapter_factory.dart';

FetchCats makeRemoteFetchCats() => RemoteFetchCats(
      httpClient: makeHttpAdapter(),
    );
