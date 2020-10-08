import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:restaurant_search_app/models/models.dart';
import 'package:http/http.dart' as http;

class ApiManager{
  Future<Restaurant> searchRestaurants(String query) async {
    final _params = {"q": query};
    Uri uri = Uri.parse("https://developers.zomato.com/api/v2.1/search");
    final newURI = uri.replace(queryParameters: _params);
    var response = await http
        .get(newURI, headers: {'user-key': DotEnv().env['ZOMATO_API_KEY']});
    if (response.statusCode == 200) {
      final restaurant = restaurantFromJson(response.body);
      return restaurant;
    } else {
      print("Request failed with status: ${response.statusCode}.");

      return null;
    }
  }
}