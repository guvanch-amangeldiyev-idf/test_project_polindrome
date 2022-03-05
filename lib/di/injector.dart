import 'package:presentation/di/screen_injection.dart';
import 'package:data/di/data_injector.dart';
import 'package:domain/di/domain_injector.dart';

Future<void> initInjector() async {
  initHomeScreenModule();
  initDomainModule();
  initDataModule();
}
