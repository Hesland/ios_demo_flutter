import 'package:flutter/material.dart';
import 'models/post.dart';

void main() {
  runApp(ZRApp());
}//=> runApp(ZRApp());

class ZRApp extends StatelessWidget {

@override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false, // 关闭 debug 条幅
      home: Home(),
      theme: ThemeData( // 设置风格
        primarySwatch:Colors.yellow,
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return Scaffold(// 导航模式
        appBar:AppBar(
          backgroundColor: Colors.grey,
          leading: IconButton(
            icon: Icon(Icons.navigate_before),
            tooltip: 'Navigation',
            onPressed: () => debugPrint('Navigation press'),
          ),
          title:Text('Navi - Title'),
          actions: <Widget>[
            IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Navigation',
            onPressed: () => debugPrint('search press'),
          ),
          ],
          elevation: 0, // 阴影值
        ),
        body: ZRListViewDemo(),//Hello()
      );
    }
}



class ZRListViewDemo extends StatelessWidget {
  Widget _listItemBuilder(BuildContext context, int index) {
  return Container(
    color: Colors.white,
    margin: EdgeInsets.all(8.0),// 内边距
    child: Column(
      children:<Widget> [
        Image.network(posts[index].imageUrl),
        SizedBox(height: 16.0),
        Text(
          posts[index].title,
          style:Theme.of(context).textTheme.title,
        ),
        Text(
          posts[index].author,
          style:Theme.of(context).textTheme.subhead,
        ),
        SizedBox(height: 16.0),
      ]
    ),
  );//Text(posts[index].title);
}
  @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return ListView.builder(
        itemCount:posts.length,
        itemBuilder:_listItemBuilder
        );
    }
}
