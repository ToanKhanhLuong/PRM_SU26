
// ax* bx +c = 0


import 'dart:math';
import 'dart:io';
void main () {
    double a = 0, b = 0, c = 0;

    do {
      stdout.write("Nhập a (Phải khác 0): ");
      String? inputA = stdin.readLineSync();
      if(inputA != null) {
        a = double.tryParse(inputA)?? 0 ; // có bắt lỗi nếu người dùng nhập vào không phải là số.
      }
    } while (a==0);


      stdout.write("Nhập b (Phải khác 0): ");
      String? inputB = stdin.readLineSync();
      if(inputB != null) {
        b = double.tryParse(inputB)?? 0 ; // có bắt lỗi nếu người dùng nhập vào không phải là số.
      }
   

    
      stdout.write("Nhập c (Phải khác 0): ");
      String? inputC = stdin.readLineSync();
      if(inputC != null) {
        c = double.tryParse(inputC)?? 0 ; // có bắt lỗi nếu người dùng nhập vào không phải là số.
      }
   // Tính detal

   double detal = b*b - 4*a*c;

   print("Dap an la :${a}*x^2 + ${b}*x + ${c} = 0");
   if (detal < 0) {
      print("Phương trình vô nghiệm");
   } else if (detal == 0) {
      double x = -b/(2*a);
      print("Phương trình có nghiệm kép x = $x");
   } else {
      double x1 = (-b + sqrt(detal))/(2*a);
      double x2 = (-b - sqrt(detal))/(2*a);
      print("Phương trình có hai nghiệm phân biệt: x1 = $x1, x2 = $x2");
   }
}