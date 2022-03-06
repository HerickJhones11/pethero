import 'package:flutter_test/flutter_test.dart';
import 'package:pethero/app/controllers/confirm_register_controller.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  testWidgets('confirm register controller ...', (tester) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var userCode = prefs.setString('code', '1234');
    var controller = ConfirmRegisterController();
    bool result = controller.verifyCode(userCode);
    expect(true, result);
  });
}