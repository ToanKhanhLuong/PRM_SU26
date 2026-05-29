void main () {
  print(2==3); // true
  print(2!=3); // true
  print(2>=3); // false

print("------------------------------");
  int a = 10;
  int b = 20;

  // == : bằng
  print(a == b); // false

  // != : khác
  print(a != b); // true

  // > : lớn hơn
  print(a > b); // false

  // < : nhỏ hơn
  print(a < b); // true

  // >= : lớn hơn hoặc bằng
  print(a >= 10); // true

  // <= : nhỏ hơn hoặc bằng
  print(b <= 19); // false

print("------------------------------");

  // So sánh chuỗi (String) cũng dùng được ==, !=
  String s1 = "dart";
  String s2 = "Dart";
  print(s1 == s2); // false (phân biệt hoa/thường)

print("------------------------------");

  // So sánh object: == phụ thuộc vào lớp (có thể override)
  List<int> x = [1, 2];
  List<int> y = [1, 2];
  print(x == y); // false (2 list khác object dù cùng nội dung)

print("------------------------------");

  // null cũng so sánh được
  int? n = null;
  print(n == null); // true
  print(n != null); // false

}