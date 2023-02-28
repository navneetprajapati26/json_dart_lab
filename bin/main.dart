import 'dart:convert';
import 'dart:io';
import 'package:json_dart_lab/indianStatesDataModel.dart';
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

  //print(persons[1].name);
  for (int i = 0; i < indianStates.length; i++) {
    // print(indianStates[i].code);
    if (indianStates[i].code == "UP") {
      print(indianStates[i].name);
    }
  }
}
