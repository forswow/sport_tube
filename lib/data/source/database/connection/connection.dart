import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:sqlite3/sqlite3.dart';
import 'package:sqlite3_flutter_libs/sqlite3_flutter_libs.dart';

LazyDatabase connect() => LazyDatabase(() async {
      const dbName = 'sporttube.db';
      final dbFolder = await getApplicationDocumentsDirectory();
      final file = File(p.join(dbFolder.path, dbName));
      if (Platform.isAndroid) {
        await applyWorkaroundToOpenSqlite3OnOldAndroidVersions();
      }
      final cachebase = (await getTemporaryDirectory()).path;

      sqlite3.tempDirectory = cachebase;
      return DatabaseConnection(NativeDatabase.createInBackground(file));
    });
