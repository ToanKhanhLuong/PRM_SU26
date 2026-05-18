import 'dart:math';

void main (){
// Định nghĩa 
// List là tập hợp các phần tử có thứ tự và có thể trùng lặp
// Các phần tử được truy cập bằng địa chỉ số (index) từ 0
// kích thước của List có thể thay đổi (dynamic size).

List<String> list1 = ['Flutter', 'Dart', 'Android', 'iOS']; // tạo 1 List chứa các chuỗi trực tiếp

var list2 = [1,2,3]; // sử dụng var
List<String> list3 = []; // tạo 1 List rỗng

var list4 = List<int>.filled(5, 0); // tạo 1 List có kích thước cố định với giá trị mặc định là 0. nó sẽ tạo ra 5 số 0 trong List list4
print(list4); // in ra List list4

// thêm phần tử vào List.

list1.add("D"); // thêm phần tử "D" vào cuối List list1
list1.addAll(['A','E', 'F']); // thêm nhiều phần tử vào cuối List list1. Cho phép trùng lặp dữ liệu
list1.insert(0, 'B'); // thêm phần tử "B" vào vị trí index 0 của List list1
list1.insertAll(2, ['1', '2']); // thêm nhiều phần tử vào vị trí index 2 của List list1. Cho phép trùng lặp dữ liệu
print(list1);

// xóa phần tử khỏi List
list1.remove("D"); // xóa phần tử "D" khỏi List list1
list1.removeAt(0); // xóa phần tử tại vị trí index 0 của List list1
list1.removeLast(); // xóa phần tử cuối cùng của List list1.
list1.removeWhere((element)=> element =='iOS'); // xóa tất cả phần tử có giá trị là "iOS" khỏi List list1, xóa phần tử theo điều kiện.
list1.clear(); // xóa tất cả phần tử khỏi List list1, làm cho List trở nên rỗng.


// truy cập phần tử trong List
print(list2[0]); // truy cập phần tử tại vị trí index 0 của List list2, in ra số 1.
print(list2.first); // truy cập phần tử đầu tiên của List list2, in ra số 1.
print(list2.last); // truy cập phần tử cuối cùng của List list2, in ra số 3.
print(list2.length); // truy cập độ dài của List list2, in ra số 3.


// Kiểm tra
print(list2.isEmpty); // kiểm tra xem List list2 có rỗng hay không, in ra false vì list2 có 3 phần tử.
print('list 3: ${list3.isNotEmpty? 'Không rỗng' : 'Rỗng'}'); // kiểm tra xem List list3 có không rỗng hay không, in ra "Rỗng" vì list3 là một List rỗng.
print(list4.contains(0)); // kiểm tra xem List list4 có chứa phần tử 0 hay không, in ra true.
print(list4.indexOf(0)); // tìm vị trí index của phần tử 0 trong List list4, in ra số 0 vì phần tử 0 xuất hiện đầu tiên tại index 0.
print(list4.lastIndexOf(0)); // tìm vị trí index cuối cùng của phần tử 0 trong List list4, in ra số 4 vì phần tử 0 xuất hiện cuối cùng tại index 4.


// Biến đổi List, sắp xếp
list4 = [5, 2, 8, 1, 4]; // tạo một List mới chứa các số nguyên
print(list4); // in ra List list4 trước khi sắp xếp
list4.sort(); // sắp xếp List list4 theo thứ tự tăng dần
print(list4); // in ra List list4 sau khi sắp xếp
list4 = list4.reversed.toList(); // đảo ngược thứ tự của List list4, nhưng không thay đổi List gốc
print(list4); // in ra List list4 sau khi đảo ngược, vẫn giữ nguyên thứ tự đã sắp xếp trước đó.

// Cắt và nối List

var sub = list4.sublist(1, 4); // tạo một List con từ List list4, bắt đầu từ index 1 đến index 3 (không bao gồm index 4)
print(sub); // in ra List sub

var str_joined = list4.join(', '); // nối các phần tử của List list4 thành một chuỗi, mỗi phần tử được ngăn cách bằng dấu phẩy và khoảng trắng
print(str_joined); // in ra chuỗi đã được nối


// Duyệt các phần tử trong List
list4.forEach((element) => print(element)); // duyệt qua từng phần tử trong List list4 và in ra mỗi phần tử
}
