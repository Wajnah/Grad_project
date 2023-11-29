import '/core/class/crud.dart';
import '/linkapp.dart';

class SignupData {
  Crud crud;
  SignupData(this.crud);
  postdata(String username, String password, String email, String phone) async {
    var response = await crud.postData(linkapp.signUp, {
      "username": username,
      "password": password,
      "email": email,
      "phone": phone,
    });
    return response.fold((l) => l, (r) => r);
  }
}
