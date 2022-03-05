import 'package:domain/repository/base.dart';
import 'package:domain/usecases/base_impl.dart';
import 'package:get_it/get_it.dart';

Future<void> initDomainModule() async {
  _initUseCaseModule();
}

void _initUseCaseModule() {
  GetIt.I.registerFactory(
      () => PalindromeUseCase(GetIt.I.get<BaseNetworkRepository>()));
}
