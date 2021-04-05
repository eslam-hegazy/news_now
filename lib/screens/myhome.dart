import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:profider/Seavice.dart/NewsApi.dart';
import 'package:profider/screens/details.dart';
import 'package:profider/widget/item.dart';
import 'package:profider/widget/text.dart';

import '../models/Articles_model.dart';

class myhome extends StatefulWidget {
  @override
  _myhomeState createState() => _myhomeState();
}

class _myhomeState extends State<myhome> with SingleTickerProviderStateMixin {
  ApiService client = ApiService();
  List<Tab> tablist = [
    Tab(child: text("الكل")),
    Tab(child: text("الصحة")),
    Tab(child: text("التعليم")),
    Tab(child: text("الرياضة")),
    Tab(child: text("التكنولوجيا")),
    Tab(child: text("الأعمال")),
  ];
  TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: tablist.length, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFF191919),
      appBar: AppBar(
        backgroundColor: Color(0xFF191919),
        elevation: 0,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: TabBar(
            isScrollable: true,
            controller: _tabController,
            indicatorColor: Colors.white,
            labelColor: Colors.white,
            tabs: tablist,
          ),
        ),
        title: Text(
          "أخبار اليوم",
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontFamily: "Lemonada"),
        ),
        centerTitle: true,
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FutureBuilder(
                future: client.getArticle(""),
                builder: (BuildContext context,
                    AsyncSnapshot<List<Article>> snapshot) {
                  if (snapshot.hasData) {
                    List<Article> articles = snapshot.data;
                    return ListView.builder(
                      //Now let's create our custom List tile
                      itemCount: articles.length,
                      itemBuilder: (context, index) =>
                          item(articles[index], context),
                    );
                  } else {
                    return Center(child: CircularProgressIndicator());
                  }
                }),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FutureBuilder(
                future: client.getArticle("health"),
                builder: (BuildContext context,
                    AsyncSnapshot<List<Article>> snapshot) {
                  if (snapshot.hasData) {
                    List<Article> articles = snapshot.data;
                    return ListView.builder(
                      //Now let's create our custom List tile
                      itemCount: articles.length,
                      itemBuilder: (context, index) =>
                          item(articles[index], context),
                    );
                  } else {
                    return Center(child: CircularProgressIndicator());
                  }
                }),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FutureBuilder(
                future: client.getArticle("science"),
                builder: (BuildContext context,
                    AsyncSnapshot<List<Article>> snapshot) {
                  if (snapshot.hasData) {
                    List<Article> articles = snapshot.data;
                    return ListView.builder(
                      //Now let's create our custom List tile
                      itemCount: articles.length,
                      itemBuilder: (context, index) =>
                          item(articles[index], context),
                    );
                  } else {
                    return Center(child: CircularProgressIndicator());
                  }
                }),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FutureBuilder(
                future: client.getArticle("sports"),
                builder: (BuildContext context,
                    AsyncSnapshot<List<Article>> snapshot) {
                  if (snapshot.hasData) {
                    List<Article> articles = snapshot.data;
                    return ListView.builder(
                      //Now let's create our custom List tile
                      itemCount: articles.length,
                      itemBuilder: (context, index) =>
                          item(articles[index], context),
                    );
                  } else {
                    return Center(child: CircularProgressIndicator());
                  }
                }),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FutureBuilder(
                future: client.getArticle("technology"),
                builder: (BuildContext context,
                    AsyncSnapshot<List<Article>> snapshot) {
                  if (snapshot.hasData) {
                    List<Article> articles = snapshot.data;
                    return ListView.builder(
                      //Now let's create our custom List tile
                      itemCount: articles.length,
                      itemBuilder: (context, index) =>
                          item(articles[index], context),
                    );
                  } else {
                    return Center(child: CircularProgressIndicator());
                  }
                }),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FutureBuilder(
                future: client.getArticle("business"),
                builder: (BuildContext context,
                    AsyncSnapshot<List<Article>> snapshot) {
                  if (snapshot.hasData) {
                    List<Article> articles = snapshot.data;
                    return ListView.builder(
                      //Now let's create our custom List tile
                      itemCount: articles.length,
                      itemBuilder: (context, index) =>
                          item(articles[index], context),
                    );
                  } else {
                    return Center(child: CircularProgressIndicator());
                  }
                }),
          ),
        ],
      ),
    );
  }
}
