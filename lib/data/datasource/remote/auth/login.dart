import '/core/class/crud.dart';
import '/linkapp.dart';

class LoginData {
  Crud crud;
  LoginData(this.crud);
  postdata(String email, String password) async {
    var response = await crud
        .postData(linkapp.login, {"email": email, "password": password});
    return response.fold((l) => l, (r) => r);
  }
}
