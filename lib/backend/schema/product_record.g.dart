// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ProductRecord> _$productRecordSerializer =
    new _$ProductRecordSerializer();

class _$ProductRecordSerializer implements StructuredSerializer<ProductRecord> {
  @override
  final Iterable<Type> types = const [ProductRecord, _$ProductRecord];
  @override
  final String wireName = 'ProductRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ProductRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.nameTitle;
    if (value != null) {
      result
        ..add('name_title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.gram;
    if (value != null) {
      result
        ..add('gram')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.nameText;
    if (value != null) {
      result
        ..add('name_text')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.img;
    if (value != null) {
      result
        ..add('img')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  ProductRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProductRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'name_title':
          result.nameTitle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'gram':
          result.gram = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'name_text':
          result.nameText = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'img':
          result.img = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$ProductRecord extends ProductRecord {
  @override
  final String? title;
  @override
  final String? nameTitle;
  @override
  final String? gram;
  @override
  final String? nameText;
  @override
  final String? img;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ProductRecord([void Function(ProductRecordBuilder)? updates]) =>
      (new ProductRecordBuilder()..update(updates))._build();

  _$ProductRecord._(
      {this.title,
      this.nameTitle,
      this.gram,
      this.nameText,
      this.img,
      this.ffRef})
      : super._();

  @override
  ProductRecord rebuild(void Function(ProductRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProductRecordBuilder toBuilder() => new ProductRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProductRecord &&
        title == other.title &&
        nameTitle == other.nameTitle &&
        gram == other.gram &&
        nameText == other.nameText &&
        img == other.img &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, title.hashCode), nameTitle.hashCode),
                    gram.hashCode),
                nameText.hashCode),
            img.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProductRecord')
          ..add('title', title)
          ..add('nameTitle', nameTitle)
          ..add('gram', gram)
          ..add('nameText', nameText)
          ..add('img', img)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ProductRecordBuilder
    implements Builder<ProductRecord, ProductRecordBuilder> {
  _$ProductRecord? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _nameTitle;
  String? get nameTitle => _$this._nameTitle;
  set nameTitle(String? nameTitle) => _$this._nameTitle = nameTitle;

  String? _gram;
  String? get gram => _$this._gram;
  set gram(String? gram) => _$this._gram = gram;

  String? _nameText;
  String? get nameText => _$this._nameText;
  set nameText(String? nameText) => _$this._nameText = nameText;

  String? _img;
  String? get img => _$this._img;
  set img(String? img) => _$this._img = img;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ProductRecordBuilder() {
    ProductRecord._initializeBuilder(this);
  }

  ProductRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _nameTitle = $v.nameTitle;
      _gram = $v.gram;
      _nameText = $v.nameText;
      _img = $v.img;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProductRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProductRecord;
  }

  @override
  void update(void Function(ProductRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProductRecord build() => _build();

  _$ProductRecord _build() {
    final _$result = _$v ??
        new _$ProductRecord._(
            title: title,
            nameTitle: nameTitle,
            gram: gram,
            nameText: nameText,
            img: img,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
