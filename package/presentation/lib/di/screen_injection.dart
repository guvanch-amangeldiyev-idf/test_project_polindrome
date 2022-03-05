import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'screen_injection.config.dart';

@InjectableInit()
void configurePresentationDependencies(GetIt getIt) => $initGetIt(getIt);
