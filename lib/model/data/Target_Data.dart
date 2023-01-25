class targetdata {
  String textTarget;
  targetdata(this.textTarget);
}

class getTarget_Data {
  List<targetdata> get target {
    return [
      targetdata("تغذیه سالم"),
      targetdata("کاهش وزن"),
      targetdata("عضله سازی"),
      targetdata("اصلاح فرم بدن"),
    ];

  }
}
