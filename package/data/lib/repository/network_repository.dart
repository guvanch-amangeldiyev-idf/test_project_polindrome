import 'package:domain/entities/palindrome_response.dart';
import 'package:domain/repository/base.dart';

class NetworkRepository implements BaseNetworkRepository {
  @override
  Future<PalindromeResponse> checkPalindrome(String palindrome) async {
    await Future.delayed(const Duration(seconds: 3));
    return Future.value(PalindromeResponse(true));
  }
}
