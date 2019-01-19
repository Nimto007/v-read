import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:v_read/models/News.dart';
import 'package:v_read/ui/news_detail.dart';
import 'package:v_read/utils/my_navigator.dart';
import 'package:v_read/utils/network_util.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<Rows> _allNews = new List<Rows>();
  NetworkUtil _netUtil = new NetworkUtil();

  Widget _getItemUI(BuildContext context, int index) {
    return new Container(
      padding: EdgeInsets.all(8.0),
      child: InkWell(
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
                        //"មូលហេតុធំ 4 យ៉ាង​នៃ​ការកើត​មុន​",
                        _allNews[index].title,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16.0),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        _allNews[index].categoryName,
                        style:
                            TextStyle(fontSize: 12.0, color: Colors.redAccent),
                        textAlign: TextAlign.left,
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        _allNews[index].description,
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
                  width: double.infinity,
                  child: new CachedNetworkImage(
                    errorWidget: new Icon(Icons.error),
                    fit: BoxFit.cover,
                    imageUrl: NetworkUtil.baseUrl + _allNews[index].image,
                    placeholder:
                    new Image.asset("assets/images/placeholder_image.png"),
                  ),
                ),


              ],
            ),
          ),
        ),
        onTap: () {
//          Navigator.push(
//              context,
//              MaterialPageRoute(
//                  builder: (context) => NewsDetail(
//                    //Rows: _allNews[index].id,
//                  )));

          NewsDetail.row = _allNews[index];
          MyNavigator.goToNewsDetail(context);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
        drawer: Drawer(),
        appBar: AppBar(
          title: Text('VREAD'),
          centerTitle: true,
        ),
        body: FutureBuilder(
          future: _netUtil.get('news-list'),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              _allNews = new News.fromJson(snapshot.data).rows;

              return ListView.builder(
                itemCount: _allNews.length,
                itemBuilder: _getItemUI,
                padding: EdgeInsets.all(0.0),
              );
            } else if (snapshot.hasError) {
              return Text("${snapshot.error}");
            }

            // By default, show a loading spinner
            return Center(child: CircularProgressIndicator());
          },
        ),
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
