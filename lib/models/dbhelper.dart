import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';


class DatabaseHelper {
  static final DatabaseHelper instance = DatabaseHelper._privateConstructor();
  static Database? _database;

  DatabaseHelper._privateConstructor();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    String path = join(await getDatabasesPath(), 'simpres.db');
    return await openDatabase(
      path,
      version: 1,
      onCreate: _createDatabase,
    );
  }

  void _createDatabase(Database db, int version) async {
    await db.execute('''
      CREATE TABLE items (
        id INTEGER PRIMARY KEY,
        name TEXT,
        nim TEXT,
        activityName TEXT,
        type TEXT,
        day TEXT,
        month TEXT,
        year TEXT,
        champ TEXT,
        phoneNumber TEXT
      )
    ''');
  }

  Future<int> insertItem1(Map<String, dynamic> item) async {
    Database db = await instance.database;
    return await db.insert('items', item);
  }

  Future<List<Map<String, dynamic>>> getAllItems() async {
  Database db = await instance.database;
  return await db.query('items');
}

}
