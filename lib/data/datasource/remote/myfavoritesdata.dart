import 'package:caotgory/linkapp.dart';
import '/core/class/crud.dart';
import '/linkapp.dart';

class MyFavoritesData {
  Crud crud;
  MyFavoritesData(this.crud);
  getData(String id) async {
    var response = await crud.postData(linkapp.favoriteView, {"id": id});
    return response.fold((l) => l, (r) => r);
  }

  deleteData(String id) async {
    var response = await crud.postData(linkapp.deletefromfavroite, {"id": id});
    return response.fold((l) => l, (r) => r);
  }
}
