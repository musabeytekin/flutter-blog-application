int calculateReadingTime(String article) {
  double readingSpeed = 200;

  int wordCount = article.split(RegExp(r'\s+')).length;

  double readingTime = wordCount / readingSpeed;

  return readingTime.ceil();
}
