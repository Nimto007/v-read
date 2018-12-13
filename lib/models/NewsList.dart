class NewsList {
  String id;
  String categoryName;
  String title;
  String description;
  String date;
  String viewCount;
  String image;

  NewsList(
      {this.id,
      this.categoryName,
      this.title,
      this.description,
      this.viewCount,
      this.date,
      this.image});

  factory NewsList.formJson(Map<String, dynamic> json) {
    return new NewsList(
      id: json["id"].toString(),
      categoryName: json["category_name"].toString(),
      title: json["title"].toString(),
      description: json["description"].toString(),
      viewCount: json["view_count"].toString(),
      date: json["date"].toString(),
      image: json["image"].toString(),
    );
  }
}
