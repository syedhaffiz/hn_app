// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Article> _$articleSerializer = new _$ArticleSerializer();

class _$ArticleSerializer implements StructuredSerializer<Article> {
  @override
  final Iterable<Type> types = const [Article, _$Article];
  @override
  final String wireName = 'Article';

  @override
  Iterable<Object> serialize(Serializers serializers, Article object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'by',
      serializers.serialize(object.by, specifiedType: const FullType(String)),
    ];
    if (object.descendants != null) {
      result
        ..add('descendants')
        ..add(serializers.serialize(object.descendants,
            specifiedType: const FullType(int)));
    }
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.kids != null) {
      result
        ..add('kids')
        ..add(serializers.serialize(object.kids,
            specifiedType:
                const FullType(BuiltList, const [const FullType(int)])));
    }
    if (object.score != null) {
      result
        ..add('score')
        ..add(serializers.serialize(object.score,
            specifiedType: const FullType(int)));
    }
    if (object.time != null) {
      result
        ..add('time')
        ..add(serializers.serialize(object.time,
            specifiedType: const FullType(int)));
    }
    if (object.deleted != null) {
      result
        ..add('deleted')
        ..add(serializers.serialize(object.deleted,
            specifiedType: const FullType(bool)));
    }
    if (object.title != null) {
      result
        ..add('title')
        ..add(serializers.serialize(object.title,
            specifiedType: const FullType(String)));
    }
    if (object.type != null) {
      result
        ..add('type')
        ..add(serializers.serialize(object.type,
            specifiedType: const FullType(String)));
    }
    if (object.url != null) {
      result
        ..add('url')
        ..add(serializers.serialize(object.url,
            specifiedType: const FullType(String)));
    }
    if (object.text != null) {
      result
        ..add('text')
        ..add(serializers.serialize(object.text,
            specifiedType: const FullType(String)));
    }
    if (object.dead != null) {
      result
        ..add('dead')
        ..add(serializers.serialize(object.dead,
            specifiedType: const FullType(bool)));
    }
    if (object.parent != null) {
      result
        ..add('parent')
        ..add(serializers.serialize(object.parent,
            specifiedType: const FullType(int)));
    }
    if (object.poll != null) {
      result
        ..add('poll')
        ..add(serializers.serialize(object.poll,
            specifiedType: const FullType(int)));
    }
    if (object.parts != null) {
      result
        ..add('parts')
        ..add(serializers.serialize(object.parts,
            specifiedType:
                const FullType(BuiltList, const [const FullType(int)])));
    }
    return result;
  }

  @override
  Article deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ArticleBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'by':
          result.by = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'descendants':
          result.descendants = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'kids':
          result.kids.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(int)]))
              as BuiltList<Object>);
          break;
        case 'score':
          result.score = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'time':
          result.time = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'deleted':
          result.deleted = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'text':
          result.text = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'dead':
          result.dead = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'parent':
          result.parent = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'poll':
          result.poll = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'parts':
          result.parts.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(int)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$Article extends Article {
  @override
  final String by;
  @override
  final int descendants;
  @override
  final int id;
  @override
  final BuiltList<int> kids;
  @override
  final int score;
  @override
  final int time;
  @override
  final bool deleted;
  @override
  final String title;
  @override
  final String type;
  @override
  final String url;
  @override
  final String text;
  @override
  final bool dead;
  @override
  final int parent;
  @override
  final int poll;
  @override
  final BuiltList<int> parts;

  factory _$Article([void Function(ArticleBuilder) updates]) =>
      (new ArticleBuilder()..update(updates)).build();

  _$Article._(
      {this.by,
      this.descendants,
      this.id,
      this.kids,
      this.score,
      this.time,
      this.deleted,
      this.title,
      this.type,
      this.url,
      this.text,
      this.dead,
      this.parent,
      this.poll,
      this.parts})
      : super._() {
    if (by == null) {
      throw new BuiltValueNullFieldError('Article', 'by');
    }
  }

  @override
  Article rebuild(void Function(ArticleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ArticleBuilder toBuilder() => new ArticleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Article &&
        by == other.by &&
        descendants == other.descendants &&
        id == other.id &&
        kids == other.kids &&
        score == other.score &&
        time == other.time &&
        deleted == other.deleted &&
        title == other.title &&
        type == other.type &&
        url == other.url &&
        text == other.text &&
        dead == other.dead &&
        parent == other.parent &&
        poll == other.poll &&
        parts == other.parts;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(0, by.hashCode),
                                                            descendants
                                                                .hashCode),
                                                        id.hashCode),
                                                    kids.hashCode),
                                                score.hashCode),
                                            time.hashCode),
                                        deleted.hashCode),
                                    title.hashCode),
                                type.hashCode),
                            url.hashCode),
                        text.hashCode),
                    dead.hashCode),
                parent.hashCode),
            poll.hashCode),
        parts.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Article')
          ..add('by', by)
          ..add('descendants', descendants)
          ..add('id', id)
          ..add('kids', kids)
          ..add('score', score)
          ..add('time', time)
          ..add('deleted', deleted)
          ..add('title', title)
          ..add('type', type)
          ..add('url', url)
          ..add('text', text)
          ..add('dead', dead)
          ..add('parent', parent)
          ..add('poll', poll)
          ..add('parts', parts))
        .toString();
  }
}

class ArticleBuilder implements Builder<Article, ArticleBuilder> {
  _$Article _$v;

  String _by;
  String get by => _$this._by;
  set by(String by) => _$this._by = by;

  int _descendants;
  int get descendants => _$this._descendants;
  set descendants(int descendants) => _$this._descendants = descendants;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  ListBuilder<int> _kids;
  ListBuilder<int> get kids => _$this._kids ??= new ListBuilder<int>();
  set kids(ListBuilder<int> kids) => _$this._kids = kids;

  int _score;
  int get score => _$this._score;
  set score(int score) => _$this._score = score;

  int _time;
  int get time => _$this._time;
  set time(int time) => _$this._time = time;

  bool _deleted;
  bool get deleted => _$this._deleted;
  set deleted(bool deleted) => _$this._deleted = deleted;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  String _text;
  String get text => _$this._text;
  set text(String text) => _$this._text = text;

  bool _dead;
  bool get dead => _$this._dead;
  set dead(bool dead) => _$this._dead = dead;

  int _parent;
  int get parent => _$this._parent;
  set parent(int parent) => _$this._parent = parent;

  int _poll;
  int get poll => _$this._poll;
  set poll(int poll) => _$this._poll = poll;

  ListBuilder<int> _parts;
  ListBuilder<int> get parts => _$this._parts ??= new ListBuilder<int>();
  set parts(ListBuilder<int> parts) => _$this._parts = parts;

  ArticleBuilder();

  ArticleBuilder get _$this {
    if (_$v != null) {
      _by = _$v.by;
      _descendants = _$v.descendants;
      _id = _$v.id;
      _kids = _$v.kids?.toBuilder();
      _score = _$v.score;
      _time = _$v.time;
      _deleted = _$v.deleted;
      _title = _$v.title;
      _type = _$v.type;
      _url = _$v.url;
      _text = _$v.text;
      _dead = _$v.dead;
      _parent = _$v.parent;
      _poll = _$v.poll;
      _parts = _$v.parts?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Article other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Article;
  }

  @override
  void update(void Function(ArticleBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Article build() {
    _$Article _$result;
    try {
      _$result = _$v ??
          new _$Article._(
              by: by,
              descendants: descendants,
              id: id,
              kids: _kids?.build(),
              score: score,
              time: time,
              deleted: deleted,
              title: title,
              type: type,
              url: url,
              text: text,
              dead: dead,
              parent: parent,
              poll: poll,
              parts: _parts?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'kids';
        _kids?.build();

        _$failedField = 'parts';
        _parts?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Article', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
