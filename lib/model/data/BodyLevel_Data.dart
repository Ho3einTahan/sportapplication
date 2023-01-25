class BodyLevel_Data {
  String textBodyLevel;
  BodyLevel_Data(this.textBodyLevel);
}

class getBodyLevel_Data {
  List<BodyLevel_Data> get BodyLevel {
    return [
      BodyLevel_Data("کم"),
      BodyLevel_Data("متوسط"),
      BodyLevel_Data("زیاد"),
    ];
  }
}
