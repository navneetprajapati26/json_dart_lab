import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:json_dart_lab/models/indianStatesDataModel.dart';
import 'package:json_dart_lab/models/my_youtube_data.dart';
import 'package:json_dart_lab/models/news_model.dart';
import 'package:json_dart_lab/models/person.dart';

void main() async{
  File data = File("assets/data.json");
  String jsonDataInString = data.readAsStringSync();
  List<Person> persons =
      List<Person>.from(json.decode(jsonDataInString).map((x) {
    return Person.fromJson(x);
  }));

  // todo:IndianStatesData
  File jsonIndianStatesData = File("assets/indianStatesData.json");
  String stringDataOfindianStates = jsonIndianStatesData.readAsStringSync();

  List<IndianStatesDataModel> indianStates = List<IndianStatesDataModel>.from(
      json.decode(stringDataOfindianStates).map((x) {
    return IndianStatesDataModel.fromJson(x);
  }));

  // todo:IndianStatesData
  File jsonMyYtDataData = File("assets/my_youtube_data.json");
  String stringDataOfMyYtData = jsonMyYtDataData.readAsStringSync();

  List<MyYtData> myYtData = List<MyYtData>.from(
      json.decode(stringDataOfMyYtData).map((x) {
    return MyYtData.fromJson(x);
  }));



  //print(persons[1].name);
  for (int i = 0; i < myYtData.length; i++) {
     //print(myYtData[i].Title);
    if (myYtData[i].Title![0] == "Z") {
      //print(myYtData[i].Title);
    }
  }


  //todo : new API
  final articales =await fetchNews();
  articales.forEach((element) {
    print(element.author);
  });
}

Future<List<NewsArticle>> fetchNews() async{
  final response = await http.get(Uri.parse("https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=7a2210ca89e24d65ae95a55a5c3e9f09"));
  if(response.statusCode == 200){
    final jsonResponse = json.decode(response.body);
    final articalJson = jsonResponse["articles"] as List<dynamic>;
    final articals = articalJson.map((e) => NewsArticle.fromJson(e)).toList();
    return articals;
  }else{
    throw Exception("failed to load news");
  }
}

