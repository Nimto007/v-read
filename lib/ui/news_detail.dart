import 'package:flutter/material.dart';
import 'package:v_read/models/News.dart';
import 'package:v_read/utils/network_util.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';

class NewsDetail extends StatelessWidget {
  static Rows row;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
                leading: InkWell(
                  child: Icon(
                    Icons.close,
                    size: 30.0,
                  ),
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                ),
                expandedHeight: 200.0,
                floating: false,
                pinned: false,
                flexibleSpace: LayoutBuilder(builder:
                    (BuildContext context, BoxConstraints constraints) {
                  return FlexibleSpaceBar(
                      centerTitle: true,
                      title: AnimatedOpacity(
                        duration: Duration(milliseconds: 300),
                        opacity: 1.0,
                      ),
                      background: Image.network(
                        NetworkUtil.baseUrl + row.image,
                        fit: BoxFit.cover,
                      ));
                })),
          ];
        },
        body: ListView(
          padding: EdgeInsets.all(16.0),
          children: <Widget>[
            Text(
              row.title,
              style: TextStyle(fontSize: 26.0, color: Colors.redAccent),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(row.categoryName, style: TextStyle(fontSize: 16.0, color: Colors.blue, fontStyle: FontStyle.italic),),
            SizedBox(
              height: 20.0,
            ),
//            Text(
//              row.content,
//              style: TextStyle(fontSize: 16.0, height: 1.3),
//              textAlign: TextAlign.justify,
//            ),

            HtmlWidget(row.content),
          ],
        ),
      ),
    );
  }
}
