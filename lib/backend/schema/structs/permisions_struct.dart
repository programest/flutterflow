import 'dart:async';

import '../index.dart';
import '../serializers.dart';
import 'package:built_value/built_value.dart';

part 'permisions_struct.g.dart';

abstract class PermisionsStruct
    implements Built<PermisionsStruct, PermisionsStructBuilder> {
  static Serializer<PermisionsStruct> get serializer =>
      _$permisionsStructSerializer;

  bool? get adil;

  /// Utility class for Firestore updates
  FirestoreUtilData get firestoreUtilData;

  static void _initializeBuilder(PermisionsStructBuilder builder) => builder
    ..adil = false
    ..firestoreUtilData = FirestoreUtilData();

  PermisionsStruct._();
  factory PermisionsStruct([void Function(PermisionsStructBuilder) updates]) =
      _$PermisionsStruct;
}

PermisionsStruct createPermisionsStruct({
  bool? adil,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    PermisionsStruct(
      (p) => p
        ..adil = adil
        ..firestoreUtilData = FirestoreUtilData(
          clearUnsetFields: clearUnsetFields,
          create: create,
          delete: delete,
          fieldValues: fieldValues,
        ),
    );

PermisionsStruct? updatePermisionsStruct(
  PermisionsStruct? permisions, {
  bool clearUnsetFields = true,
}) =>
    permisions != null
        ? (permisions.toBuilder()
              ..firestoreUtilData =
                  FirestoreUtilData(clearUnsetFields: clearUnsetFields))
            .build()
        : null;

void addPermisionsStructData(
  Map<String, dynamic> firestoreData,
  PermisionsStruct? permisions,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (permisions == null) {
    return;
  }
  if (permisions.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && permisions.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final permisionsData = getPermisionsFirestoreData(permisions, forFieldValue);
  final nestedData = permisionsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = permisions.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);

  return;
}

Map<String, dynamic> getPermisionsFirestoreData(
  PermisionsStruct? permisions, [
  bool forFieldValue = false,
]) {
  if (permisions == null) {
    return {};
  }
  final firestoreData =
      serializers.toFirestore(PermisionsStruct.serializer, permisions);

  // Add any Firestore field values
  permisions.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getPermisionsListFirestoreData(
  List<PermisionsStruct>? permisionss,
) =>
    permisionss?.map((p) => getPermisionsFirestoreData(p, true)).toList() ?? [];
