void main () {

  var x = 50;

  x++; // +1
  x--; // -1

  int a = 5;

  // a++ (post-increment): dùng giá trị hiện tại trước, rồi mới tăng a lên 1
  print(a++); // in ra 5, sau dòng này a = 6

  // ++a (pre-increment): tăng a lên 1 trước, rồi mới dùng giá trị
  print(++a); // trước khi in: a từ 6 -> 7, in ra 7

  // a-- (post-decrement): dùng giá trị hiện tại trước, rồi mới giảm a đi 1
  print(a--); // in ra 7, sau dòng này a = 6

  // --a (pre-decrement): giảm a đi 1 trước, rồi mới dùng giá trị
  print(--a); // trước khi in: a từ 6 -> 5, in ra 5

  // In giá trị cuối cùng của a
  print(a); // 5

  /* Giải thích
  Tóm tắt quy tắc:
a++: trả về giá trị cũ, rồi a = a + 1
++a: a = a + 1 trước, rồi trả về giá trị mới
a--: trả về giá trị cũ, rồi a = a - 1
--a: a = a - 1 trước, rồi trả về giá trị mới
  */
}