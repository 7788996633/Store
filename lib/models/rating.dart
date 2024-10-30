class Rating {
  final int count;

  Rating({ required this.count});

  factory Rating.fromJson(jsonData) {
    return Rating(
      count: jsonData['count'],
    );
  }
}
