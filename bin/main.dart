import 'dart:convert';
import 'dart:io';
import 'package:json_dart_lab/indianStatesDataModel.dart';
import 'package:json_dart_lab/my_youtube_data.dart';
import 'package:json_dart_lab/person.dart';

void main() {
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
      print(myYtData[i].Title);
    }
  }
}
