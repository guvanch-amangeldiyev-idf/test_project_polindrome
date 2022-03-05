import 'package:domain/usecases/base_impl.dart';
import 'package:get_it/get_it.dart';
import 'package:presentation/bloc/home_bloc.dart';

void initHomeScreenModule() async {
  _initHomeScreenModule();
}

void _initHomeScreenModule() {
  GetIt.I.registerFactory(() => HomeBloc(GetIt.I.get<PalindromeUseCase>()));
}
