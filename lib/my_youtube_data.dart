class MyYtData
{
  final String? Id;
  final String? Url;
  final String? Title;

  MyYtData({required this.Id, required this.Url, required this.Title});

  factory MyYtData.fromJson(Map<String,dynamic> json){
    return MyYtData(
      Id: json["Channel Id"],
      Url: json["Channel Url"],
      Title: json["Channel Title"],
    );
  }

}