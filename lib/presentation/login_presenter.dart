import 'package:mobile_final/domain/usecases/auth/login_with_email.dart';
import 'package:mobile_final/domain/usecases/auth/register_with_email.dart';
import 'package:mobile_final/ui/cats/cats_screen.dart';
import 'package:get/get.dart';

class LoginPresenter extends GetxController {
  LoginPresenter({
    required this.loginWithEmail,
    required this.registerWithEmail,
  });

  LoginWithEmail loginWithEmail;
  RegisterWithEmail registerWithEmail;

  var userEmail = '';
  var userPassword = '';

  void onUserEmailUpdate(String email) {
    userEmail = email;
  }

  void onPasswordUpdate(String password) {
    userPassword = password;
  }

  void onLoginButtonPressed() async {
    var user = await loginWithEmail.execute(userEmail, userPassword);
    user ??= await registerWithEmail.execute(userEmail, userPassword);
    if (user == null) {
      // show error message
    } else {
      Get.offNamed(CatsScreen.id);
    }
  }
}
