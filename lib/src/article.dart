import 'dart:convert';
import 'package:built_value/built_value.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';

import 'serializers.dart';

part 'article.g.dart';

abstract class Article implements Built<Article, ArticleBuilder> {
  static Serializer<Article> get serializer => _$articleSerializer;

  String get by;

  @nullable
  int get descendants;

  @nullable
  int get id;

  @nullable
  BuiltList<int> get kids;

  @nullable
  int get score;

  @nullable
  int get time;

  @nullable
  bool get deleted;

  @nullable
  String get title;

  @nullable
  String get type;

  @nullable
  String get url;

  @nullable
  String get text;

  @nullable
  bool get dead;

  @nullable
  int get parent;

  @nullable
  int get poll;

  @nullable
  BuiltList<int> get parts;

  Article._();

  factory Article([void Function(ArticleBuilder) updates]) = _$Article;
}

List<int> parseTopStories(String jsonString) {
  final parsed = json.decode(jsonString);
  final listOfIds = List<int>.from(parsed);

  return listOfIds;
}

Article parseArticle(String jsonString) {
  final parsed = json.decode(jsonString);
  Article article =
      standardSerializers.deserializeWith(Article.serializer, parsed);

  return article;
}
