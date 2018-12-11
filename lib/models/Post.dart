class Post {
  String personName;
  String personImage;
  String address;
  String message;
  String messageImage;
  int viewCount;
  int commentsCount;
  String postTime;
  List<String> photos;

  Post(
      {this.personName,
        this.personImage,
        this.address,
        this.message,
        this.commentsCount,
        this.viewCount,
        this.messageImage,
        this.postTime,
        this.photos});
}