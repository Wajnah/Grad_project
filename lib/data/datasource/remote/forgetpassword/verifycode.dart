
import 'package:caotgory/core/class/crud.dart';

class VerifyCodeForgetPasswordData {
  Crud crud;
  VerifyCodeForgetPasswordData(this.crud);
  postdata(String email ,String verifycode) async {
    var AppLink;
    var response = await crud.postData(AppLink.verifycodeforgetpassword, {
      "email" : email , 
      "verifycode" : verifycode   
    });
    return response.fold((l) => l, (r) => r);
  }
}