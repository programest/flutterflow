// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'permisions_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PermisionsStruct> _$permisionsStructSerializer =
    new _$PermisionsStructSerializer();

class _$PermisionsStructSerializer
    implements StructuredSerializer<PermisionsStruct> {
  @override
  final Iterable<Type> types = const [PermisionsStruct, _$PermisionsStruct];
  @override
  final String wireName = 'PermisionsStruct';

  @override
  Iterable<Object?> serialize(Serializers serializers, PermisionsStruct object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'firestoreUtilData',
      serializers.serialize(object.firestoreUtilData,
          specifiedType: const FullType(FirestoreUtilData)),
    ];
    Object? value;
    value = object.adil;
    if (value != null) {
      result
        ..add('adil')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  PermisionsStruct deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PermisionsStructBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'adil':
          result.adil = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'firestoreUtilData':
          result.firestoreUtilData = serializers.deserialize(value,
                  specifiedType: const FullType(FirestoreUtilData))!
              as FirestoreUtilData;
          break;
      }
    }

    return result.build();
  }
}

class _$PermisionsStruct extends PermisionsStruct {
  @override
  final bool? adil;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$PermisionsStruct(
          [void Function(PermisionsStructBuilder)? updates]) =>
      (new PermisionsStructBuilder()..update(updates))._build();

  _$PermisionsStruct._({this.adil, required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'PermisionsStruct', 'firestoreUtilData');
  }

  @override
  PermisionsStruct rebuild(void Function(PermisionsStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PermisionsStructBuilder toBuilder() =>
      new PermisionsStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PermisionsStruct &&
        adil == other.adil &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, adil.hashCode), firestoreUtilData.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PermisionsStruct')
          ..add('adil', adil)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class PermisionsStructBuilder
    implements Builder<PermisionsStruct, PermisionsStructBuilder> {
  _$PermisionsStruct? _$v;

  bool? _adil;
  bool? get adil => _$this._adil;
  set adil(bool? adil) => _$this._adil = adil;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  PermisionsStructBuilder() {
    PermisionsStruct._initializeBuilder(this);
  }

  PermisionsStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _adil = $v.adil;
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PermisionsStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PermisionsStruct;
  }

  @override
  void update(void Function(PermisionsStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PermisionsStruct build() => _build();

  _$PermisionsStruct _build() {
    final _$result = _$v ??
        new _$PermisionsStruct._(
            adil: adil,
            firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                firestoreUtilData, r'PermisionsStruct', 'firestoreUtilData'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
