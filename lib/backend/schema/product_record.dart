import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'product_record.g.dart';

abstract class ProductRecord
    implements Built<ProductRecord, ProductRecordBuilder> {
  static Serializer<ProductRecord> get serializer => _$productRecordSerializer;

  String? get title;

  @BuiltValueField(wireName: 'name_title')
  String? get nameTitle;

  String? get gram;

  @BuiltValueField(wireName: 'name_text')
  String? get nameText;

  String? get img;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ProductRecordBuilder builder) => builder
    ..title = ''
    ..nameTitle = ''
    ..gram = ''
    ..nameText = ''
    ..img = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('product');

  static Stream<ProductRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ProductRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ProductRecord._();
  factory ProductRecord([void Function(ProductRecordBuilder) updates]) =
      _$ProductRecord;

  static ProductRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createProductRecordData({
  String? title,
  String? nameTitle,
  String? gram,
  String? nameText,
  String? img,
}) {
  final firestoreData = serializers.toFirestore(
    ProductRecord.serializer,
    ProductRecord(
      (p) => p
        ..title = title
        ..nameTitle = nameTitle
        ..gram = gram
        ..nameText = nameText
        ..img = img,
    ),
  );

  return firestoreData;
}
