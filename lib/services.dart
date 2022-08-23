import 'dart:developer';

import 'package:http/http.dart' as http;
import 'constants.dart';
import 'package:theuiproject/post_model.dart';

class Services {

  Future<List<Post>?> getPosts() async{
    try{
      var url = Uri.parse(ApiConstants.baseUrl + ApiConstants.userEndpoint);
      var response = await http.get(url);
      if (response.statusCode == 200) {
        List<Post> _posts = postFromJson(response.body);
        return _posts;
      }
    } catch (e) {
      log(e.toString());
    }
  }
}

