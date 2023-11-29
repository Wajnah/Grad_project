import 'package:caotgory/linkapp.dart';
import '/core/class/crud.dart';
import '/linkapp.dart';

class FavoriteData {
  Crud crud;
  FavoriteData(this.crud);
  addFavorite(String usersid, String itemsid) async {
    var response = await crud.postData(
        linkapp.favoriteAdd, {"usersid": usersid, "itemsid": itemsid});
    return response.fold((l) => l, (r) => r);
  }

  removeFavorite(String usersid, String itemsid) async {
    var response = await crud.postData(
        linkapp.favoriteRemove, {"usersid": usersid, "itemsid": itemsid});
    return response.fold((l) => l, (r) => r);
  }
}
