import 'package:data/repository/network_repository.dart';
import 'package:domain/repository/base.dart';
import 'package:get_it/get_it.dart';

Future<void> initDataModule() async {
  _initRepositoryModule();
}

void _initRepositoryModule() {
  GetIt.I.registerFactory<BaseNetworkRepository>(() => NetworkRepository());
}
