class IndianStatesDataModel {
  final String code;
  final String name;

  IndianStatesDataModel({ required this.code, required this.name});

  factory IndianStatesDataModel.fromJson(Map<String,dynamic> json){

    return IndianStatesDataModel(
        code: json["code"],
        name: json["name"]
    );

  }
}
