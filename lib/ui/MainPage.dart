import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:v_read/logic/bloc/PostBloc.dart';
import 'package:v_read/models/NewsList.dart';
import 'package:v_read/models/Post.dart';

import 'package:v_read/utils/my_navigator.dart';
import 'package:v_read/utils/network_util.dart';
import 'package:v_read/utils/uidata.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:v_read/widgets/CommonDivider.dart';
import 'package:v_read/widgets/CommonDrawer.dart';
import 'package:v_read/widgets/LabelIcon.dart';

class MainPage extends StatelessWidget {
  final NetworkUtil _netUtil = new NetworkUtil();

  //List<NewsList> _allNews = new List<NewsList>();

  //column1
  Widget profileColumn(BuildContext context, NewsList newsList) => Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  newsList.title,
                  style: Theme.of(context)
                      .textTheme
                      .body1
                      .apply(fontWeightDelta: 700),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text(
                  newsList.categoryName,
                  style: Theme.of(context).textTheme.caption.apply(
                      fontFamily: UIData.ralewayFont, color: Colors.pink),
                ),
              ],
            ),
          ))
        ],
      );

  //column last

  Widget actionColumn(NewsList newsList) => Container(
        padding: EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            LabelIcon(
              label: "${newsList.viewCount} views",
              icon: FontAwesomeIcons.eye,
              iconColor: Colors.green,
            ),
//            Text(
//              post.postTime,
//              style: TextStyle(fontFamily: UIData.ralewayFont),
//            )
          ],
        ),
      );

  //post cards
  Widget postCard(BuildContext context, NewsList newList) {
    return InkWell(
      child: Card(
        elevation: 2.0,
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: profileColumn(context, newList),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                newList.description,
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontFamily: UIData.ralewayFont),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            newList.image != null
                ? Image.network(
                    newList.image.toString(),
                    fit: BoxFit.cover,
                  )
                : Container(),
            newList.image != null ? Container() : CommonDivider(),
            actionColumn(newList),
          ],
        ),
      ),
      onTap: () {
        MyNavigator.goToNewsDetail(context);
      },
    );
  }

  Widget appBar() => SliverAppBar(
        backgroundColor: Colors.redAccent,
        elevation: 2.0,
        title: Text("តោះអាន"),
        centerTitle: true,
        forceElevated: true,
        pinned: true,
        floating: false,
        // bottom: bottomBar(),
      );

  Widget bodyList(List<NewsList> posts) => SliverList(
        delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: postCard(context, posts[index]),
          );
        }, childCount: posts.length),
      );

  Widget bodySliverList() {
    return FutureBuilder(
        future: _netUtil.get(""),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return snapshot.hasData
                ? CustomScrollView(
                    slivers: <Widget>[
                      appBar(),
                      bodyList(snapshot.data),
                    ],
                  )
                : Center(
                    child: CircularProgressIndicator(),
                  );
          }
        });
  }

  //@override
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
        drawer: CommonDrawer(),
        body: bodySliverList(),
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
