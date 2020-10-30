import 'dart:convert';
import 'package:http/http.dart' as http;

class Market {
  Future getMarket() async {
    String url = "https://nepse-data-api.herokuapp.com/data/todaysprice";
    var response = await http.get(url, headers: {"accept": "application/json"});
    var data = json.decode(response.body);
    return data;
  }
}
