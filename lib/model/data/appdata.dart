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
      content("   لورم ایپسوم متن ساختگی با تولیدسادگی نامفهوم از"),
      content("   لورم ایپسوم متن ساختگی با تولیدسادگی نامفهوم از"),
      content("   لورم ایپسوم متن ساختگی با تولیدسادگی نامفهوم از"),
    ];
  }
}
