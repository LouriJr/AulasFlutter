import 'package:choreaqui/queries/queries.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import 'model/universidade.dart';

Future<Database> createDatabase() {
  return getDatabasesPath().then((dbPath) {
    final String path = join(dbPath, 'choreaqui.db');

    return openDatabase(path, onCreate: (db, version) {
      db.execute(queryDDL);

      var universidades = dml();

      for (var universidade in universidades) {
        db.insert('Universidades', universidade);
      }
    }, version: 1);
  });
}

Future<void> resetDB() async {
  var dbPath = await getDatabasesPath();
  final String path = join(dbPath, 'choreaqui.db');

  await deleteDatabase(path);
}

List<Map<String, dynamic>> dml() {
  var dml = new List<Map<String, dynamic>>();

  var anhembi = {
    'name': 'Anhembi Morumbi',
    'imagePath': 'assets/img/anhembi.png',
    'likes': 5,
    'unlikes': 1
  };
  var mackenzie = {
    'name': 'Mackenzie',
    'imagePath': 'assets/img/mackenzie.png',
    'likes': 4,
    'unlikes': 2
  };
  var unip = {
    'name': 'Unip',
    'imagePath': 'assets/img/unip.png',
    'likes': 3,
    'unlikes': 3
  };
  var anhanguera = {
    'name': 'Anhanguera',
    'imagePath': 'assets/img/anhanguera.png',
    'likes': 2,
    'unlikes': 4
  };

  dml.add(anhembi);
  dml.add(mackenzie);
  dml.add(unip);
  dml.add(anhanguera);

  return dml;
}

Future Like(int id, int value) {
  return createDatabase().then((db) {
    db.execute(like(id, value));
  });
}

Future Unlike(int id, int value) {
  return createDatabase().then((db) {
    db.execute(unlike(id, value));
  });
}

Future<List<Universidade>> mostLiked() {
  return createDatabase().then((db) {
    return db.query('Universidades', orderBy: 'likes DESC').then((maps) {
      final List<Universidade> universidades = List();

      for (var map in maps) {
        var universidade = new Universidade(map['id'], map['name'],
            map['imagePath'], map['likes'], map['unlikes']);

        universidades.add(universidade);
      }
      return universidades;
    });
  });
}

Future<List<Universidade>> mostUnliked() {
  return createDatabase().then((db) {
    return db.query('Universidades', orderBy: 'unlikes DESC').then((maps) {
      List<Universidade> universidades = [];

      for (var map in maps) {
        var universidade = new Universidade(map['id'], map['name'],
            map['imagePath'], map['likes'], map['unlikes']);

        universidades.add(universidade);
      }
      return universidades;
    });
  });
}
