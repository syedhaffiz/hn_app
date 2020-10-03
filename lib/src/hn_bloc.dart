import "dart:async";
import 'dart:collection';

import 'package:rxdart/rxdart.dart';
import 'package:http/http.dart' as http;

import 'package:hn_app/src/article.dart';

enum StoriesType { topStories, newStories }

class HackerNewsBloc {
  static const _baseUrl = "https://hacker-news.firebaseio.com/v0/";

  HashMap<int, Article> _cachedArticles;
  Stream<bool> get isLoading => _isLoadingSubject.stream;

  final _isLoadingSubject = BehaviorSubject<bool>();
  final _articlesSubject = BehaviorSubject<UnmodifiableListView<Article>>();
  var _articles = <Article>[];
  final _storiesTypeController = StreamController<StoriesType>();

  HackerNewsBloc() {
    _cachedArticles = HashMap<int, Article>();
    _intitializeArticles();

    _storiesTypeController.stream.listen((storiesType) async {
      _getArticlesAndUpdate(await _getIds(storiesType));
    });
  }

  Future<void> _intitializeArticles() async {
    _getArticlesAndUpdate(await _getIds(StoriesType.topStories));
  }

  _getArticlesAndUpdate(List<int> ids) async {
    _isLoadingSubject.add(true);
    await _updateArticles(ids);
    _articlesSubject.add(UnmodifiableListView(_articles));
    _isLoadingSubject.add(false);
  }

  Future<List<int>> _getIds(StoriesType type) async {
    final partUrl = type == StoriesType.topStories ? 'top' : 'new';
    final url = '$_baseUrl${partUrl}stories.json';

    final response = await http.get(url);
    if (response.statusCode != 200) {
      throw HackerNewsApiError("Stories $type couldn't be fetched!");
    }
    return parseTopStories(response.body).take(10).toList();
  }

  Future<Article> _getArticle(int id) async {
    if (!_cachedArticles.containsKey(id)) {
      final storyUrl = '${_baseUrl}item/$id.json';
      final storyResponse = await http.get(storyUrl);
      if (storyResponse.statusCode == 200) {
        _cachedArticles[id] = parseArticle(storyResponse.body);
      } else {
        throw HackerNewsApiError("Article $id couldn't be fetched!");
      }
    }

    return _cachedArticles[id];
  }

  Stream<UnmodifiableListView<Article>> get articles => _articlesSubject.stream;

  Sink<StoriesType> get storiesType => _storiesTypeController.sink;

  Future<Null> _updateArticles(List<int> _ids) async {
    final futureArticles = _ids.map((id) => _getArticle(id));
    final articles = await Future.wait(futureArticles);

    _articles = articles;
  }

  void close() {
    _storiesTypeController.close();
  }
}

class HackerNewsApiError extends Error {
  final String message;

  HackerNewsApiError(this.message);
}
