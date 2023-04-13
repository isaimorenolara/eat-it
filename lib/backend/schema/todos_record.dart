import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'todos_record.g.dart';

abstract class TodosRecord implements Built<TodosRecord, TodosRecordBuilder> {
  static Serializer<TodosRecord> get serializer => _$todosRecordSerializer;

  @BuiltValueField(wireName: 'Alimento')
  BuiltList<String>? get alimento;

  @BuiltValueField(wireName: 'Enfermedad')
  BuiltList<String>? get enfermedad;

  @BuiltValueField(wireName: 'Alergias')
  BuiltList<String>? get alergias;

  @BuiltValueField(wireName: 'PlanLista')
  BuiltList<String>? get planLista;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(TodosRecordBuilder builder) => builder
    ..alimento = ListBuilder()
    ..enfermedad = ListBuilder()
    ..alergias = ListBuilder()
    ..planLista = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Todos');

  static Stream<TodosRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<TodosRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  TodosRecord._();
  factory TodosRecord([void Function(TodosRecordBuilder) updates]) =
      _$TodosRecord;

  static TodosRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createTodosRecordData() {
  final firestoreData = serializers.toFirestore(
    TodosRecord.serializer,
    TodosRecord(
      (t) => t
        ..alimento = null
        ..enfermedad = null
        ..alergias = null
        ..planLista = null,
    ),
  );

  return firestoreData;
}
