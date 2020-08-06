import 'package:flutter/material.dart';
import '../models/category.dart';
import '../helper/data.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Category> _categories = new List<Category>();

  @override
  //executed for the first time when this view is used
  void initState() {
    // TODO: implement initState
    _categories = getCategories();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Bharat",
                style: TextStyle(
                  color: Colors.deepOrange,
                )),
            Text("News",
                style: TextStyle(
                  color: Colors.green[700],
                ))
          ],
        ),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
                height: 120,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: _categories.length,
                  itemBuilder: (context, index) {
                    return CategoryTile(
                      imageUrl: _categories[index].imageUrl,
                      categoryName: _categories[index].categoryName,
                    );
                  },
                )),
          ],
        ),
      ),
    );
  }
}

class CategoryTile extends StatelessWidget {
  final String imageUrl;
  final String categoryName;
  CategoryTile({this.imageUrl, this.categoryName});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 12, left: 12, top: 16),
            width: 60.0,
            height: 60.0,
            decoration: new BoxDecoration(
              shape: BoxShape.circle,
              image: new DecorationImage(
                fit: BoxFit.cover,
                image: new NetworkImage(imageUrl),
              ),
            ),
          ),
          Text(
            categoryName,
            style: TextStyle(color: Theme.of(context).accentColor),
          ),
        ],
      ),
    );
  }
}

class BlogTile extends StatelessWidget {
  final String imageUrl, title, desc;
  BlogTile({this.imageUrl, this.title, this.desc});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(shadowColor: Colors.blueGrey,
        elevation: 4,
        child: Column(
          children: <Widget>[
            Image.network(imageUrl),
            Text(
              title,
              style: TextStyle(color: Theme.of(context).accentColor),
            ),
            Text(
              desc,
              style: TextStyle(color: Theme.of(context).accentColor),
            ),
          ],
        ),
      ),
    );
  }
}
