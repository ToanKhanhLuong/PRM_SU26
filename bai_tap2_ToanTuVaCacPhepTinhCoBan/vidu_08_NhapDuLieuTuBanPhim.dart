import 'dart:io';
void main (){
// Nhập tên tuổi và địa chỉ ng dùng
stdout.write("Mời nhập tên: ");
String name = stdin.readLineSync()!;

stdout.write("Nhập Tuổi đi bro:");
int age = int.parse(stdin.readLineSync()!);

stdout.write("Nhập địa chỉ: ");
String address = stdin.readLineSync()!;

print("Chào người dùng $name, Bạn $age Tuổi, Địa chỉ bạn ở: $address");
}