import 'package:mobile_final/infra/http/http_adapter.dart';
import 'package:http/http.dart';

HttpAdapter makeHttpAdapter() => HttpAdapter(client: Client());