import 'package:flutter/material.dart';
import 'package:ios_demo_flutter/models/post.dart';

class ZRListView extends StatelessWidget {
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