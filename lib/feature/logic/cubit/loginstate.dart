
abstract class Loginstate {}
 final class LoginTabChange extends Loginstate{
  final bool isLogin;//true=signin&&false=signup
  LoginTabChange({required this.isLogin});
}
final class GoToVerificationScreen extends Loginstate{
  
}