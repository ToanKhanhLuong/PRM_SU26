/*records là 1 kiểu dữ liệu tổng hợp (Composite type) được giới thiệu trong Dart 3, 
cho phép nhóm nhiều giá trị lại với nhau thành một đơn vị duy nhất. 
Records có thể chứa các giá trị có kiểu dữ liệu khác 
nhau và được truy cập thông qua các trường (fields) hoặc chỉ số (index).
Records là im  mutable (không thể thay đổi sau khi tạo), giúp đảm bảo 
tính an toàn và dễ dàng quản lý dữ liệu. Records có thể được sử dụng để trả về nhiều giá trị từ 
một hàm mà không cần phải tạo một lớp riêng biệt. */ 



void main () {
  var record1 = ('first', x : 2, 5, 10.5); // đây là một records.

  // định nghĩa records có 2 giá trị
  var point = (123, 456); // đây là một records có 2 giá trị. x và y.

  // Định nghĩa person
  var person = (name: 'Alice', age: 30, city: 'New York', 5); // đây là một records có 3 giá trị.

  // Truy cập giá trị trong records
  // Dùng chỉ số.

  print(point.$1); // In ra 123
  print(point.$2); // In ra 456
  print(person.$1); // In ra '5'

  // Dùng tên trường.
  print(person.name); // In ra 'Alice'
  print(person.age);  // In ra 30
  print(person.city); // In ra 'New York'
}