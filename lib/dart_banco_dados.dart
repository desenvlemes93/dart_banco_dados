import 'package:dart_banco_dados/database.dart';

Future<void> main() async {
  final database = Database();

  var mysql = await database.openConnection();

  mysql.query(
    'insert into alunos(id, nome) VALUES(?,?)',
    [null, 'ricardo'],
  );
  mysql.close;
}
