class chat_Data {
  String? chatTitle;
  String? chatSubtitle;
  String? ImagePath;
  chat_Data(this.chatTitle, this.chatSubtitle, this.ImagePath);
}

class getchat_Data {
  List<chat_Data> get chat {
    return [
      chat_Data(
          "پیام های ذخیره شده", "امروز ناهار جوجه خوردم", "images/chat.png"),
      chat_Data(
          "           علی محمدی", "ممنون از پاسخگویی شما", "images/user0.png"),
      chat_Data("   حسین اکبری", "بله همین نوع هست", "images/user1.png"),
      chat_Data("                       اکبر جلالی", "پس میتونم وعدمو عوض کنم؟",
          "images/user2.png"),
      chat_Data("مهدی رضایی", "       آها ممنون", "images/user3.png"),
      chat_Data("حسین مرادی", "     مرسی دکتر", "images/user4.png"),
    ];
  }
}
