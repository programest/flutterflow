import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'form_record.g.dart';

abstract class FormRecord implements Built<FormRecord, FormRecordBuilder> {
  static Serializer<FormRecord> get serializer => _$formRecordSerializer;

  String? get name;

  int? get phone;

  String? get address;

  int? get gram;

  @BuiltValueField(wireName: 'portion_of')
  int? get portionOf;

  String? get email;

  @BuiltValueField(wireName: 'display_name')
  String? get displayName;

  @BuiltValueField(wireName: 'photo_url')
  String? get photoUrl;

  String? get uid;

  @BuiltValueField(wireName: 'created_time')
  DateTime? get createdTime;

  @BuiltValueField(wireName: 'phone_number')
  String? get phoneNumber;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(FormRecordBuilder builder) => builder
    ..name = ''
    ..phone = 0
    ..address = ''
    ..gram = 0
    ..portionOf = 0
    ..email = ''
    ..displayName = ''
    ..photoUrl = ''
    ..uid = ''
    ..phoneNumber = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('form');

  static Stream<FormRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<FormRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  FormRecord._();
  factory FormRecord([void Function(FormRecordBuilder) updates]) = _$FormRecord;

  static FormRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createFormRecordData({
  String? name,
  int? phone,
  String? address,
  int? gram,
  int? portionOf,
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
}) {
  final firestoreData = serializers.toFirestore(
    FormRecord.serializer,
    FormRecord(
      (f) => f
        ..name = name
        ..phone = phone
        ..address = address
        ..gram = gram
        ..portionOf = portionOf
        ..email = email
        ..displayName = displayName
        ..photoUrl = photoUrl
        ..uid = uid
        ..createdTime = createdTime
        ..phoneNumber = phoneNumber,
    ),
  );

  return firestoreData;
}
