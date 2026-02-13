import 'dart:convert';
import 'dart:developer' show log;
import 'package:path/path.dart';
import 'package:sakina_app/features/reminder/data/models/reminder_model.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite/sqlite_api.dart';

class DataBaseService {
  static final DataBaseService instance = DataBaseService._constructor();

  DataBaseService._constructor();

  final String _reminderTableName = "reminders";
  final String _reminderColumnID = "Id";
  final String _reminderColumnTitle = "title";
  final String _reminderColumnTime = "time";
  final String _reminderColumnIcon = "icon";
  final String _reminderColumnColors = "colors";
  final String _reminderColumnEnabled = "enabled";

  static Database? _db;

  Future<Database> get database async {
    if (_db != null) return _db!;

    _db = await getDatabase();
    return _db!;
  }

  Future<Database> getDatabase() async {
    final databaseDirPath = await getDatabasesPath();
    final databasePath = join(databaseDirPath, "master_db.db");

    final database = await openDatabase(
      databasePath,
      version: 1,

      onOpen: (db) {
        print("Database opened");
      },

      onCreate: (db, version) async {
        await db.execute('''
        CREATE TABLE $_reminderTableName(
          $_reminderColumnID INTEGER PRIMARY KEY,
          $_reminderColumnTitle TEXT NOT NULL,
          $_reminderColumnTime TEXT NOT NULL,
          $_reminderColumnIcon INTEGER,
          $_reminderColumnColors TEXT,
          $_reminderColumnEnabled INTEGER

        )
        ''');
      },
    );

    return database; // ✅ مهم جدًا
  }

  Future<void> addReminder(ReminderModel reminder) async {
    final db = await database;

    await db.insert(_reminderTableName, {
      _reminderColumnTitle: reminder.title,
      _reminderColumnTime: reminder.time,
      _reminderColumnIcon: reminder.iconCode,
      _reminderColumnColors: jsonEncode(
        reminder.colors.map((c) => c.value).toList(),
      ),
      _reminderColumnEnabled: reminder.isEnabled ? 1 : 0,
    });
  }

  Future<List<ReminderModel>> getAllReminders() async {
    final db = await database;
    final data = await db.query(_reminderTableName);

    final reminders = data.map((data) => ReminderModel.fromMap(data)).toList();
    log(reminders.toString());
    return reminders;
  }

  Future<void> updateReminderEnabled({
    required int id,
    required bool isEnabled,
  }) async {
    final db = await database;

    await db.update(
      _reminderTableName,

      {_reminderColumnEnabled: isEnabled ? 1 : 0},

      where: '$_reminderColumnID = ?',
      whereArgs: [id],
    );
  }
}
