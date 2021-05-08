import 'dart:convert';
import 'dart:ui';

import 'package:dummy/api.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'covidmodel.dart';

class CovidData extends StatefulWidget {
  @override
  _CovidDataState createState() => _CovidDataState();
}

class _CovidDataState extends State<CovidData> {
  Future<NewsModel> fetch;
  bool loading = true;
  @override
  void initState() {
    super.initState();
    fetch = fetchData();
    // print(fetch.);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
        children: [
          Container(child: Text("asdasda")),
          Expanded(
            child: FutureBuilder(
              future: fetch,
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.hasData) {
                  //return Text(snapshot.data.articles.title);

                  return ListView.builder(
                    itemCount: snapshot.data.articles.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                          child: Card(
                              child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(14.0),
                            child: Image.network(
                                snapshot.data.articles[index].urlToImage),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(14.0),
                            child: Text(snapshot.data.articles[index].title),
                          ),
                        ],
                      )));
                    },
                  );
                } else if (snapshot.hasError) {
                  return Text("${snapshot.error}");
                }

                // By default, show a loading spinner.
                return Center(child: CircularProgressIndicator());
              },
            ),
          ),
        ],
      )),
    );
  }
}
