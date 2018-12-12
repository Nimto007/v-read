

import 'package:v_read/models/Post.dart';

class PostViewModel {
  List<Post> postItems;

  PostViewModel({this.postItems});

  getPosts() => <Post>[
    Post(
        personName: "នេះ​លេង​មែនទែន! Xiaomi ​ត្រៀម​ប្រកាស​ស្មាតហ្វូន​កាមេរ៉ា 48MP ធូរ​ថ្លៃ​ក្រោម ៣០០ ដុល្លារ",
        address: "បច្ចេកវិទ្យា",
        viewCount: 1,

        message:
        "នាយក​គ្រប់គ្រង​ Xiaomi លោក Lin Bin បាន​បង្ហើប​ពី​រឿងរ៉ាវ​ថា ​ក្រុមហ៊ុន​ខ្លួន​កំពុង​ឈរ​លើ​ការ​អភិវឌ្ឍ​ស្មាតហ្វូន​មាន​បំពាក់​កាមេរ៉ា​ទំហំ 48MP ដែល​កៀក​នឹង​បង្ហាញ​ខ្លួន​អំឡុង​ខែ​ក្រោយ​នេះ។",
        messageImage:
        "http://cdn.sabay.com/cdn/media.sabay.com/media/sabay-news/Technology-News/International/News216/5c0f8f869dfa2_1544523600.jpg",
        postTime: "Just Now"),
    Post(
        personName: "Amanda",
        address: "Canada",

        commentsCount: 78,
        messageImage:
        "https://cdn.pixabay.com/photo/2016/04/10/21/34/woman-1320810_960_720.jpg",
        message:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
        personImage:
        "https://cdn.pixabay.com/photo/2016/04/10/21/34/woman-1320810_960_720.jpg",
        postTime: "5h ago"),
    Post(
        personName: "Eric",
        address: "California",
        viewCount: 50,
        message:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
        personImage:
        "https://cdn.pixabay.com/photo/2013/07/18/20/24/brad-pitt-164880_960_720.jpg",
        postTime: "2h ago"),
    Post(
        personName: "Jack",
        address: "California",
        viewCount: 23,

        messageImage:
        "https://cdn.pixabay.com/photo/2014/09/07/16/53/hands-437968_960_720.jpg",
        message:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
        personImage:
        "https://cdn.pixabay.com/photo/2016/04/01/09/51/actor-1299629_960_720.png",
        postTime: "3h ago"),
    Post(
        personName: "Neha",
        address: "Punjab",
        viewCount: 35,

        messageImage:
        "https://cdn.pixabay.com/photo/2015/11/26/00/14/fashion-1063100_960_720.jpg",
        message:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
        personImage:
        "https://cdn.pixabay.com/photo/2015/11/26/00/14/fashion-1063100_960_720.jpg",
        postTime: "1d ago"),
    Post(
        personName: "Pawan",
        address: "New Delhi, India",
        viewCount: 100,

        message:
        "Google Developer Expert for Flutter. Passionate #Flutter, #Android Developer. #Entrepreneur #YouTuber",
        personImage:
        "https://avatars0.githubusercontent.com/u/12619420?s=460&v=4",
        messageImage:
        "https://cdn.pixabay.com/photo/2018/03/09/16/32/woman-3211957_1280.jpg",
        postTime: "Just Now"),
    Post(
        personName: "Eric",
        address: "California",
        viewCount: 50,

        message:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
        personImage:
        "https://cdn.pixabay.com/photo/2013/07/18/20/24/brad-pitt-164880_960_720.jpg",
        postTime: "2h ago"),
    Post(
        personName: "Jack",
        address: "California",
        viewCount: 23,

        messageImage:
        "https://cdn.pixabay.com/photo/2014/09/07/16/53/hands-437968_960_720.jpg",
        message:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
        personImage:
        "https://cdn.pixabay.com/photo/2016/04/01/09/51/actor-1299629_960_720.png",
        postTime: "3h ago"),
    Post(
        personName: "Amanda",
        address: "Canada",
        viewCount: 123,

        messageImage:
        "https://cdn.pixabay.com/photo/2016/04/10/21/34/woman-1320810_960_720.jpg",
        message:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
        personImage:
        "https://cdn.pixabay.com/photo/2016/04/10/21/34/woman-1320810_960_720.jpg",
        postTime: "5h ago"),
    Post(
        personName: "Neha",
        address: "Punjab",
        viewCount: 35,

        messageImage:
        "https://cdn.pixabay.com/photo/2015/11/26/00/14/fashion-1063100_960_720.jpg",
        message:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
        personImage:
        "https://cdn.pixabay.com/photo/2015/11/26/00/14/fashion-1063100_960_720.jpg",
        postTime: "1d ago"),
  ];
}