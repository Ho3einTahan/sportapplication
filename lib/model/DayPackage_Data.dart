class DayPackage_Data {
  String Day;
  DayPackage_Data(this.Day);
}

class getDay_Package_Data {
  List<DayPackage_Data> get day_Package {
    return [
      DayPackage_Data("سه ماهه"),
      DayPackage_Data("دو ماهه"),
      DayPackage_Data("یک ماهه"),
    ];
  }
}
