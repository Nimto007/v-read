import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:v_read/models/NewsList.dart';
import 'package:v_read/utils/network_util.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<NewsList> _allNews = new List<NewsList>();

  NetworkUtil _netUtil = new NetworkUtil();

  Widget _getItemUI(BuildContext context, int index) {
    return new Container(
      padding: EdgeInsets.all(8.0),
      child: Card(
        elevation: 1.0,
        child: Container(
          alignment: Alignment.topLeft,
          width: double.infinity,
          //padding: EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      // _allNews[index].title,
                      "មូលហេតុធំ 4 យ៉ាង​នៃ​ការកើត​មុន​",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16.0),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      'បច្ចេកវិទ្យា!',
                      style: TextStyle(fontSize: 12.0, color: Colors.redAccent),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      'ចូលចិត្ត​រញ៉េរញ៉ៃ​ជាមួយ​ផ្ទៃមុខ ដូចជា ចាប់ ប៉ះ អង្អែល កេះ អេះ​ផ្ទៃមុខ​ញឹកញាប់។ កុំភ្លេចថា ដៃ​របស់​អ្នក​បាន​ទៅ​ចាប់​ប៉ះ​អ្វី​មក​ខ្លះ​ក្នុងមួយថ្ងៃៗ បើ​អ្នក​មិនបាន​លាងដៃ ហើយ​មក​ផ្ទៃមុខ​ញឹកញាប់ ក៏​អាច​បង្ក​ឱ្យ​កើតការ​រមាស់​ក្រហាយ ឬ​នាំ​មេរោគ​បាក់តេរីមក',
                      style: TextStyle(),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                  ],
                ),
              ),
              Container(
                height: 200.0,
                decoration: new BoxDecoration(
                  image: new DecorationImage(
                    image: new NetworkImage(
                        'http://cdn.sabay.com/cdn/media.sabay.com/media/sabay-news/Technology-News/International/News216/5c10cf4a1cf47_1544605500.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
        //drawer: CommonDrawer(),
        appBar: AppBar(
          title: Text("VRED"),
        ),
        body: FutureBuilder(
            future: _netUtil.get('news-list'),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                _allNews = new List<NewsList>();
                for (int i = 0; i < snapshot.data.length; i++) {
                  var row = snapshot.data[i];
                  _allNews.add(new NewsList(
                    id: row["id"],
                    title: row["title"],
                    categoryName: row["category_name"],
                    image: row["image"],
                    description: row["decription"],
                    date: row["date"],
                    viewCount: row["view_count"],
                  ));
                }
                return ListView.builder(
                  itemCount: _allNews.length,
                  itemBuilder: _getItemUI,
                  padding: EdgeInsets.all(0.0),
                );
              } else if (snapshot.hasError) {
                return Text("${snapshot.error}");
              }
              return Center(child: CircularProgressIndicator());
            }),
      ),
      onWillPop: () {
        _onWillPop();
      },
    );
  }

  void _onWillPop() {
    SystemNavigator.pop();
  }
}
