import 'package:domain/repository/base.dart';

import 'base_usecase.dart';

class PalindromeUseCase implements UseCase<String, Future<bool>> {
  final BaseNetworkRepository _repository;

  PalindromeUseCase(this._repository);

  @override
  Future<bool> call(String params) async {
    final response = await _repository.checkPalindrome(params);
    return Future.value(response
        .isPalindrome); //!from PalindromeResponse => BaseNetworkRepository
  }

  @override
  void dispose() {}
}
