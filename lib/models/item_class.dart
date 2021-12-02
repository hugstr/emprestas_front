const String tableBooks = 'books';

class BookFields {
  static final List<String> values = [
    id,
    title,
    author,
    description,
    image,
    totalQuantity,
    availableQuantity,
    createdAt
  ];
  static final String id = '_id';
  static final String title = 'title';
  static final String author = 'author';
  static final String description = 'description';
  static final String image = 'image';
  static final String totalQuantity = 'totalQuantity';
  static final String availableQuantity = 'availableQuantity';
  static final String createdAt = 'createdAt';
}

class Book {
  final int id;
  final String title;
  final String author;
  final String description;
  final int totalQuantity;
  final int availableQuantity;
  final DateTime createdAt;
  final String image;

  Book({
    required this.id,
    required this.title,
    required this.description,
    required this.author,
    required this.totalQuantity,
    required this.availableQuantity,
    required this.createdAt,
    required this.image,
  });

  Map<String, Object?> toJson() {
    return {
      BookFields.id: id,
      BookFields.title: title,
      BookFields.description: description,
      BookFields.author: author,
      BookFields.totalQuantity: totalQuantity,
      BookFields.availableQuantity: availableQuantity,
      BookFields.createdAt: createdAt.toIso8601String(),
      BookFields.image: image,
    };
  }

  Book copy({
    int? id,
    String? title,
    String? author,
    String? description,
    int? totalQuantity,
    int? availableQuantity,
    DateTime? createdAt,
    String? image,
  }) =>
      Book(
          id: id ?? this.id,
          title: title ?? this.title,
          author: author ?? this.author,
          description: description ?? this.description,
          totalQuantity: totalQuantity ?? this.totalQuantity,
          availableQuantity: availableQuantity ?? this.availableQuantity,
          createdAt: createdAt ?? this.createdAt,
          image: image ?? this.image);

  static Book fromJson(Map<String, Object?> json) => Book(
        id: json[BookFields.id] as int,
        title: json[BookFields.title] as String,
        author: json[BookFields.author] as String,
        description: json[BookFields.description] as String,
        totalQuantity: json[BookFields.totalQuantity] as int,
        availableQuantity: json[BookFields.availableQuantity] as int,
        createdAt: DateTime.parse(json[BookFields.createdAt] as String),
        image: json[BookFields.image] as String,
      );
}

const String tableLoans = 'loans';

class LoansFields {
  static final List<String> values = [id, loanDate, returnDate, loanItems];

  static const String id = '_id';
  static const String loanDate = 'loanDate';
  static const String returnDate = 'returnDate';
  static const String loanItems = 'loanItems';
}

class Loan {
  final int id;
  final DateTime loanDate;
  final DateTime returnDate;
  final String loanItems;

  Loan({
    required this.id,
    required this.loanDate,
    required this.returnDate,
    required this.loanItems,
  });

  Map<String, Object?> toJson() {
    return {
      LoansFields.id: id,
      LoansFields.loanDate: loanDate.toIso8601String(),
      LoansFields.returnDate: returnDate.toIso8601String(),
      LoansFields.loanItems: loanItems,
    };
  }

  Loan copy({
    int? id,
    DateTime? loanDate,
    DateTime? returnDate,
    String? loanItems,
  }) =>
      Loan(
          id: id ?? this.id,
          loanDate: loanDate ?? this.loanDate,
          returnDate: returnDate ?? this.returnDate,
          loanItems: loanItems ?? this.loanItems);

  static Loan fromJson(Map<String, Object?> json) => Loan(
        id: json[LoansFields.id] as int,
        loanDate: DateTime.parse(json[LoansFields.loanDate] as String),
        returnDate: DateTime.parse(json[LoansFields.returnDate] as String),
        loanItems: json[LoansFields.loanItems] as String,
      );
}

const String tableUsers = 'users';

class UserFields {
  static const String id = '_id';
  static const String name = 'name';
  static const String email = 'email';
  static const String password = 'password';
  static const String createdAt = 'createdAt';
  static const String isAdmin = 'isAdmin';
}

class User {
  final int id;
  final String name;
  final String email;
  final String password;
  final DateTime createdAt;
  final bool isAdmin;

  User({
    required this.id,
    required this.name,
    required this.email,
    required this.password,
    required this.createdAt,
    required this.isAdmin,
  });

  Map<String, Object?> toJson() => {
        UserFields.id: id,
        UserFields.name: name,
        UserFields.email: email,
        UserFields.password: password,
        UserFields.createdAt: createdAt.toIso8601String(),
        UserFields.isAdmin: isAdmin ? 1 : 0,
      };

  User copy({
    int? id,
    String? name,
    String? email,
    String? password,
    DateTime? createdAt,
    bool? isAdmin,
  }) =>
      User(
          id: id ?? this.id,
          name: name ?? this.name,
          email: email ?? this.email,
          password: password ?? this.password,
          createdAt: createdAt ?? this.createdAt,
          isAdmin: isAdmin ?? this.isAdmin);

  static User fromJson(Map<String, Object?> json) => User(
        id: json[UserFields.id] as int,
        name: json[UserFields.name] as String,
        email: json[UserFields.email] as String,
        password: json[UserFields.password] as String,
        createdAt: DateTime.parse(json[UserFields.createdAt] as String),
        isAdmin: json[UserFields.isAdmin] as int == 1,
      );
}
