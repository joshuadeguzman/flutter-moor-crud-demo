// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moor_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps
class GoalsTableData extends DataClass implements Insertable<GoalsTableData> {
  final int id;
  final String name;
  final double value;
  final DateTime dateAdded;
  GoalsTableData(
      {@required this.id,
      @required this.name,
      @required this.value,
      this.dateAdded});
  factory GoalsTableData.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final doubleType = db.typeSystem.forDartType<double>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return GoalsTableData(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      name: stringType.mapFromDatabaseResponse(data['${effectivePrefix}name']),
      value:
          doubleType.mapFromDatabaseResponse(data['${effectivePrefix}value']),
      dateAdded: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}date_added']),
    );
  }
  factory GoalsTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return GoalsTableData(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      value: serializer.fromJson<double>(json['value']),
      dateAdded: serializer.fromJson<DateTime>(json['dateAdded']),
    );
  }
  @override
  Map<String, dynamic> toJson(
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return {
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'value': serializer.toJson<double>(value),
      'dateAdded': serializer.toJson<DateTime>(dateAdded),
    };
  }

  @override
  T createCompanion<T extends UpdateCompanion<GoalsTableData>>(
      bool nullToAbsent) {
    return GoalsTableCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      value:
          value == null && nullToAbsent ? const Value.absent() : Value(value),
      dateAdded: dateAdded == null && nullToAbsent
          ? const Value.absent()
          : Value(dateAdded),
    ) as T;
  }

  GoalsTableData copyWith(
          {int id, String name, double value, DateTime dateAdded}) =>
      GoalsTableData(
        id: id ?? this.id,
        name: name ?? this.name,
        value: value ?? this.value,
        dateAdded: dateAdded ?? this.dateAdded,
      );
  @override
  String toString() {
    return (StringBuffer('GoalsTableData(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('value: $value, ')
          ..write('dateAdded: $dateAdded')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(id.hashCode,
      $mrjc(name.hashCode, $mrjc(value.hashCode, dateAdded.hashCode))));
  @override
  bool operator ==(other) =>
      identical(this, other) ||
      (other is GoalsTableData &&
          other.id == id &&
          other.name == name &&
          other.value == value &&
          other.dateAdded == dateAdded);
}

class GoalsTableCompanion extends UpdateCompanion<GoalsTableData> {
  final Value<int> id;
  final Value<String> name;
  final Value<double> value;
  final Value<DateTime> dateAdded;
  const GoalsTableCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.value = const Value.absent(),
    this.dateAdded = const Value.absent(),
  });
  GoalsTableCompanion copyWith(
      {Value<int> id,
      Value<String> name,
      Value<double> value,
      Value<DateTime> dateAdded}) {
    return GoalsTableCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      value: value ?? this.value,
      dateAdded: dateAdded ?? this.dateAdded,
    );
  }
}

class $GoalsTableTable extends GoalsTable
    with TableInfo<$GoalsTableTable, GoalsTableData> {
  final GeneratedDatabase _db;
  final String _alias;
  $GoalsTableTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _nameMeta = const VerificationMeta('name');
  GeneratedTextColumn _name;
  @override
  GeneratedTextColumn get name => _name ??= _constructName();
  GeneratedTextColumn _constructName() {
    return GeneratedTextColumn('name', $tableName, false,
        defaultValue: Constant(""));
  }

  final VerificationMeta _valueMeta = const VerificationMeta('value');
  GeneratedRealColumn _value;
  @override
  GeneratedRealColumn get value => _value ??= _constructValue();
  GeneratedRealColumn _constructValue() {
    return GeneratedRealColumn('value', $tableName, false,
        defaultValue: Constant(0));
  }

  final VerificationMeta _dateAddedMeta = const VerificationMeta('dateAdded');
  GeneratedDateTimeColumn _dateAdded;
  @override
  GeneratedDateTimeColumn get dateAdded => _dateAdded ??= _constructDateAdded();
  GeneratedDateTimeColumn _constructDateAdded() {
    return GeneratedDateTimeColumn(
      'date_added',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [id, name, value, dateAdded];
  @override
  $GoalsTableTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'goals_table';
  @override
  final String actualTableName = 'goals_table';
  @override
  VerificationContext validateIntegrity(GoalsTableCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.id.present) {
      context.handle(_idMeta, id.isAcceptableValue(d.id.value, _idMeta));
    } else if (id.isRequired && isInserting) {
      context.missing(_idMeta);
    }
    if (d.name.present) {
      context.handle(
          _nameMeta, name.isAcceptableValue(d.name.value, _nameMeta));
    } else if (name.isRequired && isInserting) {
      context.missing(_nameMeta);
    }
    if (d.value.present) {
      context.handle(
          _valueMeta, value.isAcceptableValue(d.value.value, _valueMeta));
    } else if (value.isRequired && isInserting) {
      context.missing(_valueMeta);
    }
    if (d.dateAdded.present) {
      context.handle(_dateAddedMeta,
          dateAdded.isAcceptableValue(d.dateAdded.value, _dateAddedMeta));
    } else if (dateAdded.isRequired && isInserting) {
      context.missing(_dateAddedMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  GoalsTableData map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return GoalsTableData.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(GoalsTableCompanion d) {
    final map = <String, Variable>{};
    if (d.id.present) {
      map['id'] = Variable<int, IntType>(d.id.value);
    }
    if (d.name.present) {
      map['name'] = Variable<String, StringType>(d.name.value);
    }
    if (d.value.present) {
      map['value'] = Variable<double, RealType>(d.value.value);
    }
    if (d.dateAdded.present) {
      map['date_added'] = Variable<DateTime, DateTimeType>(d.dateAdded.value);
    }
    return map;
  }

  @override
  $GoalsTableTable createAlias(String alias) {
    return $GoalsTableTable(_db, alias);
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(const SqlTypeSystem.withDefaults(), e);
  $GoalsTableTable _goalsTable;
  $GoalsTableTable get goalsTable => _goalsTable ??= $GoalsTableTable(this);
  @override
  List<TableInfo> get allTables => [goalsTable];
}
