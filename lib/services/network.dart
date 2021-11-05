import 'package:dio/dio.dart';
import 'package:listtile_api/screens/first_screen.dart';


class Network {
  Future<List<dynamic>> getPost() async {
    final response =
        await Dio().get('https://jsonplaceholder.typicode.com/comments');
   return response.data;
  }
}

