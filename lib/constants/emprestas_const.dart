import 'package:empresta_s/models/item_class.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class EmprestasDatabase {
  static final EmprestasDatabase instance = EmprestasDatabase._init();

  static Database? _database;

  EmprestasDatabase._init();

  Future<Database> get database async {
    if (_database != null) return _database!;

    _database = await _initDB('emprestas.db');
    return _database!;
  }

  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);

    return await openDatabase(path, version: 3, onCreate: _createDB);
  }

  Future _createDB(Database db, int version) async {
    const idType = 'INTEGER PRIMARY KEY AUTOINCREMENT';
    const textType = 'TEXT NOT NULL';
    const boolType = 'BOOLEAN NOT NULL';
    const integerType = 'INTEGER NOT NULL';
    const dateType = 'DATE NOT NULL';

    await db.execute('''
CREATE TABLE $tableBooks (
  ${BookFields.id} $idType,
  ${BookFields.title} $textType,
  ${BookFields.author} $textType,
  ${BookFields.description} $textType,
  ${BookFields.image} $textType,
  ${BookFields.totalQuantity} $integerType,
  ${BookFields.availableQuantity} $integerType,
  ${BookFields.createdAt} $textType
  )
''');

    await db.execute('''
CREATE TABLE $tableLoans (
  ${LoansFields.id} $idType,
  ${LoansFields.loanDate} $integerType,
  ${LoansFields.returnDate} $integerType,
  ${LoansFields.loanItems} $textType,
  )
''');

    await db.execute('''
CREATE TABLE $tableUsers (
  ${UserFields.id} $idType,
  ${UserFields.name} $textType,
  ${UserFields.email} $textType,
  ${UserFields.password} $textType,
  ${UserFields.createdAt} $dateType
  )
''');
  }

  Future<Book> insertBook(Book book) async {
    final db = await database;
    final id = await db.insert(tableBooks, book.toJson());
    return book.copy(id: id);
  }

  Future<Book?> getBook(int id) async {
    final db = await database;

    final maps = await db.query(
      tableBooks,
      columns: BookFields.values,
      where: '${BookFields.id} = ?',
      whereArgs: [id],
    );

    if (maps.isEmpty) {
      return Book.fromJson(maps.first);
    } else {
      return null;
    }
    ;
  }

  Future<List<Book>> getAllBooks() async {
    final db = await database;

    final orderBy = '${BookFields.id} ASC';
    final result = await db.query(
      tableBooks,
      columns: BookFields.values,
      orderBy: orderBy,
    );

    return result.map((json) => Book.fromJson(json)).toList();
  }

  Future<int> updateBook(Book book) async {
    final db = await database;
    return await db.update(
      tableBooks,
      book.toJson(),
      where: '${BookFields.id} = ?',
      whereArgs: [book.id],
    );
  }

  Future<int> deleteBook(int id) async {
    final db = await database;
    return await db.delete(
      tableBooks,
      where: '${BookFields.id} = ?',
      whereArgs: [id],
    );
  }

  Future<Loan> insertLoan(Loan loan) async {
    final db = await database;
    final id = await db.insert(tableLoans, loan.toJson());
    return loan.copy(id: id);
  }

  Future<Loan?> getLoan(int id) async {
    final db = await database;

    final maps = await db.query(
      tableLoans,
      columns: LoansFields.values,
      where: '${LoansFields.id} = ?',
      whereArgs: [id],
    );

    if (maps.isEmpty) {
      return Loan.fromJson(maps.first);
    } else {
      return null;
    }
  }

  Future<List<Loan>> getAllLoans() async {
    final db = await database;

    final orderBy = '${LoansFields.id} ASC';
    final result = await db.query(
      tableLoans,
      columns: LoansFields.values,
      orderBy: orderBy,
    );

    return result.map((json) => Loan.fromJson(json)).toList();
  }

  Future<int> updateLoan(Loan loan) async {
    final db = await database;
    return await db.update(
      tableLoans,
      loan.toJson(),
      where: '${LoansFields.id} = ?',
      whereArgs: [loan.id],
    );
  }

  Future<int> deleteLoan(int id) async {
    final db = await database;
    return await db.delete(
      tableLoans,
      where: '${LoansFields.id} = ?',
      whereArgs: [id],
    );
  }

  Future<User> insertUser(User user) async {
    final db = await database;
    final id = await db.insert(tableUsers, user.toJson());
    return user.copy(id: id);
  }
}
