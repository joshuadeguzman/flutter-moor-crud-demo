// Copyright 2019 Joshua de Guzman (https://joshuadeguzman.github.io). All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:moor/moor.dart';
import 'package:moor_flutter/moor_flutter.dart';

// Moor works by source gen. This file will all the generated code.
part 'moor_database.g.dart';

// Default data class name is "GoalsTable"
//
// If you want to change it, feel free to add the annotation @DataClassName
// eg. @DataClassName('CustomDataClassName')
class GoalsTable extends Table {
  // Auto increments integer.
  // Acts as our primary key
  IntColumn get id => integer().autoIncrement()();

  // Sets default value to empty string.
  TextColumn get name => text().withDefault(Constant(""))();

  // Sets default value to 0 (floating point).
  RealColumn get value => real().withDefault(Constant(0))();

  // DateTime is not natively supported by SQLite.
  // Moor converts it to & from UNIX seconds
  DateTimeColumn get dateAdded => dateTime().nullable()();
}

// This annotation tells the code generator which tables this DB works with
@UseMoor(tables: [GoalsTable])
// _$AppDatabase is the name of the generated class
class AppDatabase extends _$AppDatabase {
  AppDatabase()
      // Specify the location of the database file
      : super((FlutterQueryExecutor.inDatabaseFolder(
          path: 'flutter_savely.sqlite',
          // Good for debugging - prints SQL in the console
          logStatements: true,
        )));

  // Bump this when changing tables and columns.
  // Migrations will be covered in the next part.
  @override
  int get schemaVersion => 1;
}