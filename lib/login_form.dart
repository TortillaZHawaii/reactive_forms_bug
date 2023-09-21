import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import './must_match_validator.dart';

part 'login_form.gform.dart';

@Rf()
@RfGroup(validators: [
  MyMustMatchValidator(
    controlName: 'password',
    matchingControlName: 'confirmPassword',
  ),
])
class LoginForm {
  String email;
  String password;
  String confirmPassword;

  LoginForm({
    @RfControl(
      validators: [
        RequiredValidator(),
        EmailValidator(),
      ],
    )
    required this.email,
    @RfControl() required this.password,
    @RfControl() required this.confirmPassword,
  });
}
