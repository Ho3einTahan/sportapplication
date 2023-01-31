class article {
  String imagePath;
  article(this.imagePath);
}

class get_article_Data {
  List<article> get articleimage {
    return [
      article("images/whatsapp_slider.png"),
      article("images/instagram_slider.png"),

    ];
  }
}
