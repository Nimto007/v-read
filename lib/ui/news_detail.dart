import 'package:flutter/material.dart';

class NewsDetail extends StatefulWidget {
  @override
  _NewsDetailState createState() => _NewsDetailState();
}

class _NewsDetailState extends State<NewsDetail> {
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
                  // print('constraints=' + constraints.toString());
                  //top = constraints.biggest.height;
                  return FlexibleSpaceBar(
                      centerTitle: true,
                      title: AnimatedOpacity(
                        duration: Duration(milliseconds: 300),
                        //opacity: top == 80.0 ? 1.0 : 0.0,
                        opacity: 1.0,
//                          child: Text(
//                            "kjglkfg",
//                            style: TextStyle(fontSize: 12.0),
//                          ),
                      ),
                      background: Image.network(
                        "https://images.unsplash.com/photo-1542601098-3adb3baeb1ec?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=5bb9a9747954cdd6eabe54e3688a407e&auto=format&fit=crop&w=500&q=60",
                        fit: BoxFit.cover,
                      ));
                })),
          ];
        },
        body: ListView(
          padding: EdgeInsets.all(16.0),
          children: <Widget>[
            Text(
              'នេះ​លេង​មែនទែន! Xiaomi ​ត្រៀម​ប្រកាស​ស្មាតហ្វូន​កាមេរ៉ា 48MP ធូរ​ថ្លៃ​ក្រោម ៣០០ ដុល្លារ',
              style: TextStyle(fontSize: 26.0, color: Colors.redAccent),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text('ដោយ៖ នីម តូ'),
            SizedBox(
              height: 10.0,
            ),
            Text('១២-១២-២០១៨'),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "នាយក​គ្រប់គ្រង​ Xiaomi លោក Lin Bin បាន​បង្ហើប​ពី​រឿងរ៉ាវ​ថា ​ក្រុមហ៊ុន​ខ្លួន​កំពុង​ឈរ​លើ​ការ​អភិវឌ្ឍ​ស្មាតហ្វូន​មាន​បំពាក់​កាមេរ៉ា​ទំហំ 48MP ដែល​កៀក​នឹង​បង្ហាញ​ខ្លួន​អំឡុង​ខែ​ក្រោយ​នេះ។របាយការណ៍​មួ​យផ្សេង​ទៀត​ ចុះ​ផ្សាយ​មុន​នេះ​បន្តិច​ឲ្យ​ដឹង​ថា ​ក្រុមហ៊ុន​យក្ស​ប្រទេស​ចិន​នឹង​ប្រកាស​ស្មាតហ្វូន​សេរ៊ី Redmi "
                  "ដោយ​មាន​ការ​រចនា​បង្កប់​កាមេរ៉ា​មុខ​លើ​អេក្រង់​ផ្នែក​ខាង​ឆ្វេង ស្រដៀង​នឹង​រចនាបថ​លើ Huawei nova 4, Honor View 20 និ"
                  "ង Samsung Galaxy A8s។"
                  "ជា​ពិសេស​នៅ​ផ្នែក​ខាង​ក្រោយ​នឹង​ស្រោប​ដោយ​សារធាតុ​កញ្ចក់ ខណៈ​ខាង​មុខ​ជា​អេក្រង់ LCD ផ្គត់ផ្គង់​ដោយ​ក្រុមហ៊ុន​ស្ថិត​ក្នុង​មូលដ្ឋាន​តែ​មួយ​គឺ BOE រំពឹង​មាន​ប្រើប្រាស់​កាមេរ៉ា ៣ គ្រាប់​នៅ​ខាង​ក្រោយ ដោយ​មាន​មួយ​ទំហំ 48MP និង​ផ្សេង​ទៀត​ជា​ប្រភេទ​លែន Super Wide-Angle មក​ព្រម​គ្នា។ចំពោះ​តម្លៃ​ស្មាតហ្វូន​ធុន​កណ្តាល​គ្រង​ប្រើប្រាស់​បន្ទះ​ឈីប Snapdragon 675 ម៉ូឌែល​នេះ​នឹង​ដាក់​លក់​ត្រឹម​តម្លៃ​ ២ ០០០ យ័ន្ត​ឬ​ជាង ២៨៩ ដុល្លារ​ តែ​ប៉ុណ្ណោះ៕",
              style: TextStyle(fontSize: 16.0, height: 1.3),
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}
