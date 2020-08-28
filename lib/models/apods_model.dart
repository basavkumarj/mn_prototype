class ApodsModel {
  String title, description;

  ApodsModel.fromJsonMap(Map map)
      : title = map['title'],
        description = map['explanation'];
}
