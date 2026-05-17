void main() {

  // ====== 1. KIỂU DỮ LIỆU SỐ ======

  // int: lưu số nguyên
  int age = 20;
  print(age);

  // double: lưu số thực (có dấu thập phân)
  double height = 1.75;
  print(height);

  // num: kiểu cha của int và double
  num x = 100;
  num y = 10.5;

  print(x);
  print(y);



  // ====== 2. CHUYỂN CHUỖI -> SỐ ======

  // String -> int
  int number = int.parse('100');

  print(number);          // 100
  print(number.runtimeType); // int


  // String -> double
  double point = double.parse('10.5');

  print(point);           // 10.5
  print(point.runtimeType); // double



  // ====== 3. CHUYỂN SỐ -> CHUỖI ======

  // int -> String
  String numToString = 100.toString();

  print(numToString);          // "100"
  print(numToString.runtimeType); // String



  // double -> String và làm tròn

  String pi = 3.14159.toStringAsFixed(2);

  print(pi);      // 3.14
  print(pi.runtimeType);



  // ====== 4. ÉP KIỂU num -> int hoặc double ======

  num z = 10.8;

  int a = z.toInt();       // bỏ phần thập phân
  double b = z.toDouble(); // chuyển thành double

  print(a); // 10
  print(b); // 10.8
}