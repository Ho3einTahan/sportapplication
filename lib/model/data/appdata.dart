class image {
  final String imagePath;
  image(this.imagePath);
}

class content {
  final String contentPageView;
  content(this.contentPageView);
}

class appDataBase {
  List<image> get imagePath {
    return [
      image("images/lunch.png"),
      image("images/water.png"),
      image("images/health.png"),
    ];
  }

  List<content> get contentPageView {
    return [
      content("با دریافت بهترین برنامه از بهترین مربیان، تغذیه‌ خودت رو سالم کن"),
      content("با برنامه های تمرینی مربیان ما، تناسب اندامت رو حفظ کن"),
      content("با برنامه تمرینی و تغذیه ی اختصاصی خود، با بیماری ها خداحافظی کن"),
    ];
  }

  List<content> get topcontent {
    return [
      content("تغذیه"),
      content("تمرین"),
      content("سلامتی"),
    ];
  }
}
