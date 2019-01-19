class News {
  List<Rows> rows;

  News({this.rows});

  News.fromJson(Map<String, dynamic> json) {
    if (json['rows'] != null) {
      rows = new List<Rows>();
      json['rows'].forEach((v) {
        rows.add(new Rows.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.rows != null) {
      data['rows'] = this.rows.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Rows {
  int id;
  String title;
  String image;
  String description;
  String content;
  String date;
  String viewCount;
  String categoryName;

  Rows(
      {this.id,
        this.title,
        this.image,
        this.description,
        this.content,
        this.date,
        this.viewCount,
        this.categoryName});

  Rows.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    image = json['image'];
    description = json['description'];
    content = json['content'];
    date = json['date'];
    viewCount = json['view_count'];
    categoryName = json['category_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['image'] = this.image;
    data['description'] = this.description;
    data['content'] = this.content;
    data['date'] = this.date;
    data['view_count'] = this.viewCount;
    data['category_name'] = this.categoryName;
    return data;
  }
}
