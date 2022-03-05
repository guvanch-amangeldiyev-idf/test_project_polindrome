import 'package:domain/entities/palindrome_response.dart';

abstract class BaseNetworkRepository {
  Future<PalindromeResponse> checkPalindrome(String palindrome);
}
