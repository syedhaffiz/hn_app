import "dart:async";
import 'dart:collection';

import 'package:rxdart/rxdart.dart';
import 'package:http/http.dart' as http;

import 'package:hn_app/src/article.dart';

class HackerNewsBloc {
  final _articlesSubject = BehaviorSubject<UnmodifiableListView<Article>>();
  var _articles = <Article>[];

  List<int> _ids = [
    24577522,
    24590174,
    24583314,
    24586455,
    24577738,
    24593093,
    24578166,
    24590401,
    24587143,
    24593028,
    24581810,
    24588655,
    24601579
  ];

  HackerNewsBloc() {
    _updateArticles().then((_) {
      _articlesSubject.add(UnmodifiableListView(_articles));
    });
  }

  Future<Article> _getArticle(int id) async {
    final storyUrl = 'https://hacker-news.firebaseio.com/v0/item/$id.json';
    final storyResponse = await http.get(storyUrl);
    if (storyResponse.statusCode == 200) {
      return parseArticle(storyResponse.body);
    }
  }

  Stream<UnmodifiableListView<Article>> get articles => _articlesSubject.stream;

  Future<Null> _updateArticles() async {
    final futureArticles = _ids.map((id) => _getArticle(id));
    final articles = await Future.wait(futureArticles);

    _articles = articles;
  }
}
