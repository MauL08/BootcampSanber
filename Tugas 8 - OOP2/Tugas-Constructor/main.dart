import 'employee.dart';

void main() {
  int id = 1313619003;
  String name = 'Akbar Maulana';
  String departement = 'Universitas Negeri Jakarta';

  Employee data = new Employee(id, name, departement);

  print(data.id);
  print(data.name);
  print(data.departement);
}
